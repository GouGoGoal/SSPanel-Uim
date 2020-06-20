<?php
/**
 * Created by PhpStorm.
 * User: tonyzou
 * Date: 2018/9/24
 * Time: 下午4:23
 */

namespace App\Services\Gateway;

use App\Models\Paylist;
use App\Models\Payback;
use App\Models\User;
use App\Models\Code;
use App\Services\Config;
use App\Utils\Telegram;

abstract class AbstractPayment
{
    abstract public function purchase($request, $response, $args);

    abstract public function notify($request, $response, $args);

    abstract public function getPurchaseHTML();

    abstract public function getReturnHTML($request, $response, $args);

    abstract public function getStatus($request, $response, $args);

    public function postPayment($pid, $method)
    {
        $p = Paylist::where('tradeno', $pid)->first();

        if ($p->status == 1) {
            return json_encode(['errcode' => 0]);
        }

        $p->status = 1;
        $p->save();
        $user = User::find($p->userid);
        //$user->money = $user->money+$p->total;
        $user->money += $p->total*1; //充值加赠20%
        $user->save();
        $codeq = new Code();
        $codeq->code = $method;
        $codeq->isused = 1;
        $codeq->type = -1;
        $codeq->number = $p->total;
        $codeq->usedatetime = date('Y-m-d H:i:s');
        $codeq->userid = $user->id;
        $codeq->save();

        if ($user->ref_by >= 1) {
            $gift_user = User::where('id', '=', $user->ref_by)->first();
            $gift_user->money += ($codeq->number * (Config::get('code_payback') / 100));
            $gift_user->save();
            $Payback = new Payback();
            $Payback->total = $codeq->number;
            $Payback->userid = $user->id;
            $Payback->ref_by = $user->ref_by;
            $Payback->ref_get = $codeq->number * (Config::get('code_payback') / 100);
            $Payback->datetime = time();
            $Payback->save();
        }

           if ($codeq->number>=50) 
                Telegram::Send("感谢邮箱首四位 “".substr($user->email,0,4)."” 的兄弟送来的 ".$codeq->number." 元大飞机！");
            #else if ($codeq->number>=15) 
            #    Telegram::Send("感谢邮箱首四位 “".substr($user->email,0,4)."” 的兄弟送来 ".$codeq->number." 元小火车！");
            #else
            #    Telegram::Send("感谢邮箱首四位 “".substr($user->email,0,4)."” 的兄弟送来 ".$codeq->number." 元自行车！");
        return 0;
    }

    public static function generateGuid()
    {
        mt_srand((double)microtime() * 10000);
        $charid = strtoupper(md5(uniqid(mt_rand() + time(), true)));
        $hyphen = chr(45);
        $uuid = chr(123)
            . substr($charid, 0, 8) . $hyphen
            . substr($charid, 8, 4) . $hyphen
            . substr($charid, 12, 4) . $hyphen
            . substr($charid, 16, 4) . $hyphen
            . substr($charid, 20, 12)
            . chr(125);
        $uuid = str_replace(['}', '{', '-'], '', $uuid);
        $uuid = substr($uuid, 0, 8);
        return $uuid;
    }
}
