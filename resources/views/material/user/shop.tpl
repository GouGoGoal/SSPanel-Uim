{include file='user/main.tpl'}


<main class="content">
    <div class="content-header ui-content-header">
        <div class="container">
            <h1 class="content-heading">套餐列表</h1>
        </div>
    </div>
    <div class="container">
        <div class="col-lg-12 col-sm-12">
            <section class="content-inner margin-top-no">

                <div class="card">
                    <div class="card-main">
                        <div class="card-inner">
                            <p>若您在使用期间流量用尽，将会提前结束会员身份(每日重置类套餐会在次日恢复)</p>
                            <p><b><font color="red" size="4">套餐不可叠加</font></b>，新购商品会覆盖旧商品的效果，故请等待"巨无霸"或"乐享视频"套餐完全过期后再购买其他套餐</p>
                            <p>请<b><font color="red" size="4">检查自动续费</font></b>，若因未关闭自动续费而造成的重复扣款，本站<b><font color="red" size="4">不予补偿</font></b></p>
                            <p>本站商品<b><font color="red" size="4">严禁倒卖</font></b>，如有发现删号不退款</p>
			    <p>本站所有套餐对<b><font color="red" size="4">节点速度不限制也不保障，</font></b>实际使用速度取决于本地宽带和服务器带宽</p>
                            <p>"<b><font color="red" size="3">巨无霸"或"乐享视频"套餐将在24小时以后的自然日0点进行重置，</font></b>例如1月1日08:00购买，则在1月2日24:00重置流量，请知悉</p>
                            <p><i class="icon icon-lg">attach_money</i>当前余额：<font color="#399AF2" size="5">{$user->money}</font> 元</p>
                        </div>
                    </div>
                </div>

                <div class="ui-switch">
                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner ui-switch">
                                <div class="switch-btn" id="switch-cards">
                                    <a href="#" onclick="return false">
                                        <i class="mdui-icon material-icons">apps</i>
                                    </a>
                                </div>
                                <div class="switch-btn" id="switch-table">
                                    <a href="#" onclick="return false">
                                        <i class="mdui-icon material-icons">dehaze</i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="shop-flex">

                    {foreach $shops as $shop}
                        <div class="card">
                            <div class="card-main">
                                <div class="shop-name">{$shop->name}</div>
                                <div class="shop-price">{$shop->price}</div>
                                <div class="shop-content-extra">
                                    {foreach $shop->content_extra() as $service}
                                        <div><span class="icon">{$service[0]}</span> {$service[1]}</div>
                                    {/foreach}
                                </div>
                                <a class="btn btn-brand-accent shop-btn" href="javascript:void(0);"onClick="buy('{$shop->id}',{$shop->auto_renew})">购买</a>
                            </div>
                        </div>
                    {/foreach}

                    <div class="flex-fix3"></div>
                    <div class="flex-fix4"></div>
                </div>

                <div class="shop-table">

                    {foreach $shops as $shop}
                        <div class="shop-gridarea">
                            <div class="card">
                                <div>
                                    <div class="shop-name"><span>{$shop->name}</span></div>
                                    <div class="card-tag tag-gold">VIP {$shop->user_class()}</div>
                                    <div class="card-tag tag-orange">¥ {$shop->price}</div>
                                    <div class="card-tag tag-cyan">{$shop->bandwidth()} G</div>
                                    <div class="card-tag tag-blue">{$shop->class_expire()} 天</div>
                                </div>
                                <div>
                                    <i class="material-icons">expand_more</i>
                                </div>
                            </div>
                            <a class="btn btn-brand-accent shop-btn" href="javascript:void(0);"
                               onClick="buy('{$shop->id}',{$shop->auto_renew})">购买</a>

                            <!--<div class="shop-drop dropdown-area">
                                <div class="card-tag tag-black">账号有效期</div>
                                <div class="card-tag tag-blue">{$shop->expire()} 天</div>
                                {if {$shop->reset()} == '0' }
                                    <div class="card-tag tag-black">重置周期</div>
                                    <div class="card-tag tag-blue">N/A</div>
                                {else}
                                    <div class="card-tag tag-black">重置周期</div>
                                    <div class="card-tag tag-blue">{$shop->reset_exp()} 天</div>
                                    <div class="card-tag tag-black">重置频率</div>
                                    <div class="card-tag tag-blue">{$shop->reset_value()}G/{$shop->reset()}天</div>
                                {/if}
                                {if {$shop->speedlimit()} == '0' }
                                    <div class="card-tag tag-black">端口速率</div>
                                    <div class="card-tag tag-blue">无限制</div>
                                {else}
                                    <div class="card-tag tag-black">端口限速</div>
                                    <div class="card-tag tag-blue">{$shop->speedlimit()} Mbps</div>
                                {/if}
                                {if {$shop->connector()} == '0' }
                                    <div class="card-tag tag-black">客户端数量</div>
                                    <div class="card-tag tag-blue">无限制</div>
                                {else}
                                    <div class="card-tag tag-black">客户端限制</div>
                                    <div class="card-tag tag-blue">{$shop->connector()} 个</div>
                                {/if}
                            </div>-->
                        </div>
                    {/foreach}

                </div>


                <div aria-hidden="true" class="modal modal-va-middle fade" id="coupon_modal" role="dialog"
                     tabindex="-1">
                    <div class="modal-dialog modal-xs">
                        <div class="modal-content">
                            <div class="modal-heading">
                                <a class="modal-close" data-dismiss="modal">×</a>
                                <h2 class="modal-title">请注意！</h2>
                            </div>
                            <div class="modal-inner">
                                <div class="form-group form-group-label">
                                     <div>购买前请检查之前的"<b><font color="red" size="5">自动续费</font></b>"是否已生效,否则会造成重复扣费</div>
                                    <div>若当前有"巨无霸""乐享视频"套餐尚未过期</div>
                                    <div>请<b><font color="red" size="4">待其过期后</font></b>再购买流量型套餐</div><br>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <p class="text-right">
                                    <button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal"
                                            id="coupon_input" type="button">我已知晓
                                    </button>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>


                <div aria-hidden="true" class="modal modal-va-middle fade" id="order_modal" role="dialog" tabindex="-1">
                    <div class="modal-dialog modal-xs">
                        <div class="modal-content">
                            <div class="modal-heading">
                                <a class="modal-close" data-dismiss="modal">×</a>
                                <h2 class="modal-title">订单确认</h2>
                            </div>
                            <div class="modal-inner">
                                <p id="name">商品名称：</p>
                                <p id="total">总金额：</p>

                                <div class="checkbox switch">
                                    <label for="disableothers">
                                        <input checked class="access-hide" id="disableothers" type="checkbox">
                                        <span class="switch-toggle"></span>关闭旧套餐自动续费
                                    </label>
                                </div>
                                <br/>
                                <div class="checkbox switch" id="autor">
                                    <label for="autorenew">
                                        <input class="access-hide" id="autorenew" type="checkbox" >
                                        <span class="switch-toggle"></span>到期时自动续费
                                    </label>
                                </div>

                            </div>

                            <div class="modal-footer">
                                <p class="text-right">
                                    <button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal"
                                            id="order_input" type="button">确定
                                    </button>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                {include file='dialog.tpl'}

        </div>


    </div>
</main>


{include file='user/footer.tpl'}


<script>
    function buy(id, auto) {
        if (auto == 0) {
            document.getElementById('autor').style.display = "none";
        } else {
            document.getElementById('autor').style.display = "";
        }
        shop = id;
        $("#coupon_modal").modal();
    }

    ;(function () {

        //UI切换
        let elShopCard = $$.querySelector(".shop-flex");
        let elShopTable = $$.querySelector(".shop-table");

        let switchToCard = new UIswitch('switch-cards', elShopTable, elShopCard, 'flex', 'tempshop');
        switchToCard.listenSwitch();

        let switchToTable = new UIswitch('switch-table', elShopCard, elShopTable, 'flex', 'tempshop');
        switchToTable.listenSwitch();

        switchToCard.setDefault();
        switchToTable.setDefault();

        //手风琴
        let dropDownButton = document.querySelectorAll('.shop-table .card');
        let dropDownArea = document.querySelectorAll('.dropdown-area');
        let arrows = document.querySelectorAll('.shop-table .card i');

        for (let i = 0; i < dropDownButton.length; i++) {
            rotatrArrow(dropDownButton[i], arrows[i]);
            custDropdown(dropDownButton[i], dropDownArea[i]);
        }

    })();


    $("#coupon_input").click(function () {
        $.ajax({
            type: "POST",
            url: "coupon_check",
            dataType: "json",
            data: {
                shop
            },
            success: (data) => {
                if (data.ret) {
                    $$.getElementById('name').innerHTML = `商品名称：${
                            data.name
                            }`;
                    $$.getElementById('total').innerHTML = `总金额：${
                            data.total
                            }`;
                    $("#order_modal").modal();
                } else {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = data.msg;
                }
            },
            error: (jqXHR) => {
                $("#result").modal();
                $$.getElementById('msg').innerHTML = `${
                        data.msg
                        } 发生了错误`;
            }
        })
    });

    $("#order_input").click(function () {

        if (document.getElementById('autorenew').checked) {
            var autorenew = 1;
        } else {
            var autorenew = 0;
        }

        if (document.getElementById('disableothers').checked) {
            var disableothers = 1;
        } else {
            var disableothers = 0;
        }

        $.ajax({
            type: "POST",
            url: "buy",
            dataType: "json",
            data: {
                shop,
                autorenew,
                disableothers
            },
            success: (data) => {
                if (data.ret) {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = data.msg;
                    window.setTimeout("location.href='/user/shop'", {$config['jump_delay']});
                } else {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = data.msg;
                }
            },
            error: (jqXHR) => {
                $("#result").modal();
                $$.getElementById('msg').innerHTML = `${
                        data.msg
                        } 发生了错误`;
            }
        })
    });

</script>

-<script>
$(function () {
	$("#result").modal();
	$("#msg").html("购买前请先查看上方提示，以免造成不必要的损失");
});
</script>

