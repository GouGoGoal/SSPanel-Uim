{include file='user/main.tpl'}

<main class="content">
    <div class="content-header ui-content-header">
        <div class="container">
            <h1 class="content-heading">修改资料</h1>
        </div>
    </div>
    <div class="container">
        <section class="content-inner margin-top-no">

            <div class="col-xx-12 col-sm-6">
                <div class="card margin-bottom-no">
                    <div class="card-main">
                        <div class="card-inner">
                            <div class="card-inner">
                                <div class="cardbtn-edit">
                                    <div class="card-heading">节点连接密码修改</div>
                                    <button class="btn btn-flat" id="ss-pwd-update"><span class="icon">check</span>&nbsp;</button>
                                </div>

                                <p>当前连接密码：<code id="ajax-user-passwd">{$user->passwd}</code>
                                    <button class="kaobei copy-text btn btn-subscription" type="button" data-clipboard-text="{$user->passwd}">
                                        点击拷贝
                                    </button>
                                </p>
                                <!--<div class="form-group form-group-label">
                                    <label class="floating-label" for="sspwd">新连接密码</label>
                                    <input class="form-control maxwidth-edit" id="sspwd" type="text">
                                </div>
                                <br>-->
                                <p>为了确保您的安全，节点连接密码不允许自定义，点击提交按钮将会自动生成由随机字母和数字组成的连接密码。</p>
                                <p>修改连接密码同时也会自动为您重新生成 V2Ray 节点的 UUID。</p>
                                <p>修改密码后，请立刻更新各个客户端上的连接信息。</p>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="card margin-bottom-no">
                    <div class="card-main">
                        <div class="card-inner">
                            <div class="card-inner">
                                <div class="card-heading">选择客户端</div>
                                <p>SS/SSD/SSR 支持的加密方式和混淆方式有所不同，请根据实际情况来进行选择</p>
                                <p>在这里选择你需要使用的客户端可以帮助你筛选加密方式和混淆方式</p>
                                <br>
                                <button class="btn btn-subscription" type="button" id="filter-btn-ss">SS/SSD</button>
                                <button class="btn btn-subscription" type="button" id="filter-btn-ssr">SSR</button>
                                <button class="btn btn-subscription" type="button" id="filter-btn-universal">通用</button>
                            </div>
                            <div class="card-inner">
                                <div class="cardbtn-edit">
                                    <div class="card-heading">加密方式修改</div>
                                    <button class="btn btn-flat" id="method-update"><span class="icon">check</span>&nbsp</button>
                                </div>
                                <p>
                                    当前加密方式：<code id="ajax-user-method" data-default="method">[{if URL::CanMethodConnect($user->method) == 2}SS/SSD{else}SS/SSR{/if}可连接] {$user->method}</code>
                                </p>
                                <div class="form-group form-group-label control-highlight-custom dropdown">
                                    <label class="floating-label" for="method">加密方式</label>
                                    <button id="method" class="form-control maxwidth-edit" data-toggle="dropdown"
                                            value="{$user->method}"></button>
                                    <ul class="dropdown-menu" aria-labelledby="method">
                                        {$method_list = $config_service->getSupportParam('method')}
                                        {foreach $method_list as $method}
                                            <li class="{if URL::CanMethodConnect($user->method) == 2}filter-item-ss{else}filter-item-universal{/if}">
                                                <a href="#" class="dropdown-option" onclick="return false;"
                                                   val="{$method}"
                                                   data="method">[{if URL::CanMethodConnect($method) == 2}SS/SSD{else}SS/SSR{/if}
                                                    可连接] {$method}</a>
                                            </li>
                                        {/foreach}
                                    </ul>
                                </div>
                            </div>

                            <div class="card-inner">
                                <div class="cardbtn-edit">
                                    <div class="card-heading">协议&混淆设置</div>
                                    <button class="btn btn-flat" id="ssr-update"><span class="icon">check</span>&nbsp;</button>
                                </div>
                                <p>当前协议：<code id="ajax-user-protocol" data-default="protocol">[{if URL::CanProtocolConnect($user->protocol) == 3}SS/SSD/SSR{else}SSR{/if}可连接] {$user->protocol}</code></p>
                                <div class="form-group form-group-label control-highlight-custom dropdown">
                                    <label class="floating-label" for="protocol">协议</label>
                                    <button id="protocol" class="form-control maxwidth-edit" data-toggle="dropdown"
                                            value="{$user->protocol}"></button>
                                    <ul class="dropdown-menu" aria-labelledby="protocol">
                                        {$protocol_list = $config_service->getSupportParam('protocol')}
                                        {foreach $protocol_list as $protocol}
                                            <li class="{if URL::CanProtocolConnect($protocol) == 3}filter-item-universal{else}filter-item-ssr{/if}">
                                                <a href="#" class="dropdown-option" onclick="return false;" val="{$protocol}" data="protocol">
                                                    [{if URL::CanProtocolConnect($protocol) == 3}SS/SSD/SSR{else}SSR{/if}
                                                    可连接] {$protocol}
                                                </a>
                                            </li>
                                        {/foreach}
                                    </ul>
                                </div>

                            </div>

                            <div class="card-inner">
                                <p>当前混淆方式：<code id="ajax-user-obfs" data-default="obfs">[{if URL::CanObfsConnect($user->obfs) >= 3}SS/SSD/SSR{elseif URL::CanObfsConnect($user->obfs) == 1}SSR{else}SS/SSD{/if}可连接] {$user->obfs}</code></p>
                                <p>SS/SSD 和 SSR 支持的混淆类型有所不同，simple_obfs_* 为 SS/SSD 的混淆方式，其他为 SSR 的混淆方式</p>
                                <div class="form-group form-group-label control-highlight-custom dropdown">
                                    <label class="floating-label" for="obfs">混淆方式</label>
                                    <button id="obfs" class="form-control maxwidth-edit" data-toggle="dropdown" value="{$user->obfs}"></button>
                                    <ul class="dropdown-menu" aria-labelledby="obfs">
                                        {$obfs_list = $config_service->getSupportParam('obfs')}
                                        {foreach $obfs_list as $obfs}
                                            <li class="{if URL::CanObfsConnect($obfs) >= 3}filter-item-universal{else}{if URL::CanObfsConnect($obfs) == 1}filter-item-ssr{else}filter-item-ss{/if}{/if}">
                                                <a href="#" class="dropdown-option" onclick="return false;" val="{$obfs}" data="obfs">
                                                    [{if URL::CanObfsConnect($obfs) >= 3}SS/SSD/SSR{else}{if URL::CanObfsConnect($obfs) == 1}SSR{else}SS/SSD{/if}{/if}可连接] {$obfs}
                                                </a>
                                            </li>
                                        {/foreach}
                                    </ul>
                                </div>
                            </div>

                            <div class="card-inner">
                                <p>当前混淆参数：<code id="ajax-user-obfs-param">{$user->obfs_param}</code></p>
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="obs-param">在这输入混淆参数</label>
                                    <input class="form-control maxwidth-edit" id="obfs-param" type="text">
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>


            <div class="col-xx-12 col-sm-6">

                <div class="card margin-bottom-no">
                    <div class="card-main">
                        <div class="card-inner">
                            <div class="card-inner">
                                <div class="cardbtn-edit">
                                    <div class="card-heading">账号登录密码修改</div>
                                    <button class="btn btn-flat" id="pwd-update"><span class="icon">check</span>&nbsp;
                                    </button>
                                </div>
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="oldpwd">当前密码</label>
                                    <input class="form-control maxwidth-edit" id="oldpwd" type="password">
                                </div>

                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="pwd">新密码</label>
                                    <input class="form-control maxwidth-edit" id="pwd" type="password">
                                </div>

                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="repwd">确认新密码</label>
                                    <input class="form-control maxwidth-edit" id="repwd" type="password">
                                </div>
                            </div>

                        </div>
                    </div>
                </div>


                {if $config['port_price']>=0 || $config['port_price_specify']>=0}
                    <div class="card margin-bottom-no">
                        <div class="card-main">
                            <div class="card-inner">
                                {if $config['port_price']>=0}
                                    <div class="card-inner">
                                        <div class="cardbtn-edit">
                                            <div class="card-heading">重置端口</div>
                                            <button class="btn btn-flat" id="portreset"><span
                                                        class="icon">autorenew</span>&nbsp;
                                            </button>
                                        </div>
                                        <p>对号码不满意？来摇号吧～！</p>
                                        <p>随机更换一个端口使用，价格：<code>{$config['port_price']}</code>元/次</p>
                                        <p>重置后 1 分钟内生效</p>
                                        <p>当前端口：<code id="ajax-user-port">{$user->port}</code></p>
                                    </div>
                                {/if}

                                {if $config['port_price_specify']>=0}
                                    <div class="card-inner">
                                        <div class="cardbtn-edit">
                                            <div class="card-heading">钦定端口</div>
                                            <button class="btn btn-flat" id="portspecify"><span
                                                        class="icon">call_made</span>&nbsp;
                                            </button>
                                        </div>
                                        <p>不想摇号？来钦定端口吧～！</p>
                                        <p>价格：<code>{$config['port_price_specify']}</code>元/次</p>
                                        <p>端口范围：<code>{$config['min_port']}～{$config['max_port']}</code></p>
                                        <div class="form-group form-group-label">
                                            <label class="floating-label" for="port-specify">在这输入想钦定的端口号</label>
                                            <input class="form-control maxwidth-edit" id="port-specify" type="num">
                                        </div>
                                    </div>
                                {/if}
                            </div>
                        </div>
                    </div>
                {/if}

                {if $config['enable_telegram'] == 'true' || $config['enable_discord'] == 'true'}
                    <div class="card margin-bottom-no">
                        <div class="card-main">
                            <div class="card-inner">
                                <div class="card-inner">
                                    {if $user->telegram_id != 0}
                                        <div class="cardbtn-edit">
                                            <div class="card-heading">Telegram 绑定</div>
                                            <div><a class="btn btn-flat btn-brand-accent"
                                                    href="/user/telegram_reset"><span class="icon">not_interested</span>&nbsp;</a>
                                            </div>
                                        </div>
                                    {/if}
                                    {if $user->discord != 0}
                                        <div class="cardbtn-edit">
                                            <div class="card-heading">Discord 绑定</div>
                                            <div>
                                                <a class="btn btn-flat btn-brand-accent" href="/user/discord_reset">
                                                <span class="icon">not_interested</span>&nbsp;
                                                </a>
                                            </div>
                                        </div>
                                    {/if}

                                    {if $user->telegram_id == 0 || $user->discord == 0}
                                        <p>复制保存下方的二维码图片（有效期10分钟，超时请刷新本页面以重新获取，每张二维码只能使用一次）</p>
                                        {if $user->telegram_id == 0}
                                            <p>私聊发给 Telegram 机器人 <a href="https://t.me/{$telegram_bot}">@{$telegram_bot}</a> 以绑定
                                                Telegram</p>
                                        {/if}
                                        {if $user->discord == 0}
                                            <p>私聊发给 Discord 机器人 以绑定 Discord</p>
                                        {/if}
                                    {/if}
                                    <div class="form-group form-group-label">
                                        <div class="text-center">
                                            <div id="telegram-qr" class="qr-center"></div>
                                            {if $user->telegram_id != 0}
                                                <p>当前绑定Telegram账户：<a href="https://t.me/{$user->im_value}">@{$user->im_value}</a>
                                                </p>
                                            {/if}
                                            {if $user->discord != 0}
                                                <p>当前绑定Telegram账户：{$user->im_value}</p>
                                            {/if}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                {/if}


                {include file='dialog.tpl'}

        </section>
    </div>
</main>


{include file='user/footer.tpl'}

<script>
    $(function () {
        new Clipboard('.copy-text');
    });

    $(".copy-text").click(function () {
        $("#result").modal();
        $$.getElementById('msg').innerHTML = '已复制到您的剪贴板。';
    });
</script>

{literal}
<script>
    /*
     * 筛选 SS/SSR 加密、混淆和协议的选项
     *
     * 引入三个按钮：
     * #filter-btn-ss 筛选 SS，点击以后隐藏 .filter-item-ssr，显示 .filter-item-ss 和 .filter-item-universal
     * #filter-btn-ssr 筛选 SSR，点击以后隐藏 .filter-item-ss，显示 .filter-item-ssr 和 .filter-item-universal
     * #filter-btn-universal 筛选必须同时兼容两者的，点击以后隐藏 .filter-item-ss 和 .filter-item-ssr，显示 .filter-item-universal
     *
     * 引入函数 hideFilterItem(itemType) 和 showFilterItem(itemType)，参数 item 可以是 ss ssr universal。
     */
    (() => {
        const hideFilterItem = (itemType) => {
            for (let i of $$.getElementsByClassName(`filter-item-${itemType}`)) {
                i.style.display = 'none';
            }
        };
        const showFilterItem = (itemType) => {
            for (let i of $$.getElementsByClassName(`filter-item-${itemType}`)) {
                i.style.display = 'block';
            }
        };

        const chooseSS = () => {
            hideFilterItem('ssr');
            showFilterItem('ss');
            showFilterItem('universal');
        };

        const chooseSSR = () => {
            hideFilterItem('ss');
            showFilterItem('ssr');
            showFilterItem('universal');
        };

        const chooseUniversal = () => {
            hideFilterItem('ss');
            hideFilterItem('ssr');
            showFilterItem('universal');
        };

        $$.getElementById('filter-btn-ss').addEventListener('click', chooseSS);
        $$.getElementById('filter-btn-ssr').addEventListener('click', chooseSSR);
        $$.getElementById('filter-btn-universal').addEventListener('click', chooseUniversal);
    })();
</script>
{/literal}

{literal}
<script>
    $(document).ready(function () {
        $("#portreset").click(function () {
            $.ajax({
                type: "POST",
                url: "resetport",
                dataType: "json",
                data: {},
                success: (data) => {
                    if (data.ret) {
                        $("#result").modal();
                        $$.getElementById('ajax-user-port').innerHTML = data.msg;
                        $$.getElementById('msg').innerHTML = `设置成功，新端口是 ${
                                data.msg
                                }`;
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                    }
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${
                            data.msg
                            } 出现了一些错误`;
                }
            })
        })
    })
</script>
<script>
    $(document).ready(function () {
        $("#portspecify").click(function () {
            $.ajax({
                type: "POST",
                url: "specifyport",
                dataType: "json",
                data: {
                    port: $$getValue('port-specify')
                },
                success: (data) => {
                    if (data.ret) {
                        $("#result").modal();
                        $$.getElementById('ajax-user-port').innerHTML = $$getValue('port-specify');
                        $$.getElementById('msg').innerHTML = data.msg;
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                    }
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${
                            data.msg
                            } 出现了一些错误`;
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#setpac").click(function () {
            $.ajax({
                type: "POST",
                url: "pacset",
                dataType: "json",
                data: {
                    pac: $("#pac").text()
                },
                success: (data) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = data.msg;
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${
                            data.msg
                            } 出现了一些错误`;
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#pwd-update").click(function () {
            $.ajax({
                type: "POST",
                url: "password",
                dataType: "json",
                data: {
                    oldpwd: $$getValue('oldpwd'),
                    pwd: $$getValue('pwd'),
                    repwd: $$getValue('repwd')
                },
                success: (data) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = data.msg;
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${
                            data.msg
                            } 出现了一些错误`;
                }
            })
        })
    })
</script>
{/literal}
<script>

    {if $config['enable_telegram'] == 'true' || $config['enable_discord'] == 'true'}

    var telegram_qrcode = 'mod://bind/{$bind_token}';

    if ($$.getElementById("telegram-qr")) {
        let qrcode2 = new QRCode(document.getElementById("telegram-qr"));
        qrcode2.clear();
        qrcode2.makeCode(telegram_qrcode);
    }

    {/if}
</script>

{literal}
<script>
    $(document).ready(function () {
        $("#wechat-update").click(function () {
            $.ajax({
                type: "POST",
                url: "wechat",
                dataType: "json",
                data: {
                    wechat: $$getValue('wechat'),
                    imtype: $$getValue('imtype')
                },
                success: (data) => {
                    if (data.ret) {
                        $("#result").modal();
                        $$.getElementById('ajax-im').innerHTML = `${$("#imtype").find("option:selected").text()} ${$$getValue('wechat')}`
                        $$.getElementById('msg').innerHTML = data.msg;
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                    }
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${data.msg} 出现了一些错误`;
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#ssr-update").click(function () {
            $.ajax({
                type: "POST",
                url: "ssr",
                dataType: "json",
                data: {
                    protocol: $$getValue('protocol'),
                    obfs: $$getValue('obfs'),
                    obfs_param: $$getValue('obfs-param')
                },
                success: (data) => {
                    if (data.ret) {
                        $("#result").modal();
                        $$.getElementById('ajax-user-protocol').innerHTML = $$getValue('protocol');
                        $$.getElementById('ajax-user-obfs').innerHTML = $$getValue('obfs');
                        $$.getElementById('ajax-user-obfs-param').innerHTML = $$getValue('obfs-param');
                        $$.getElementById('msg').innerHTML = data.msg;
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                    }
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${data.msg} 出现了一些错误`;
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#relay-update").click(function () {
            $.ajax({
                type: "POST",
                url: "relay",
                dataType: "json",
                data: {
                    relay_enable: $$getValue('relay_enable'),
                    relay_info: $$getValue('relay_info')
                },
                success: (data) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = data.msg;
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${data.msg} 出现了一些错误`;
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#unblock").click(function () {
            $.ajax({
                type: "POST",
                url: "unblock",
                dataType: "json",
                data: {},
                success: (data) => {
                    if (data.ret) {
                        $("#result").modal();
                        $$.getElementById('ajax-block').innerHTML = `IP：${
                                data.msg
                                } 没有被封`;
                        $$.getElementById('msg').innerHTML = `IP：${
                                data.msg
                                } 解封成功过`;
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                    }
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${data.msg} 出现了一些错误`;
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#ga-test").click(function () {
            $.ajax({
                type: "POST",
                url: "gacheck",
                dataType: "json",
                data: {
                    code: $$getValue('code')
                },
                success: (data) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = data.msg;
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${data.msg} 出现了一些错误`;
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#ga-set").click(function () {
            $.ajax({
                type: "POST",
                url: "gaset",
                dataType: "json",
                data: {
                    enable: $$getValue('ga-enable')
                },
                success: (data) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = data.msg;
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${data.msg} 出现了一些错误`;
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        let newsspwd = Math.random().toString(36).substr(2);
        $("#ss-pwd-update").click(function () {
            $.ajax({
                type: "POST",
                url: "sspwd",
                dataType: "json",
                data: {
                    sspwd: newsspwd
                },
                success: (data) => {
                    if (data.ret) {
                        $("#result").modal();
                        $$.getElementById('ajax-user-passwd').innerHTML = newsspwd;
                        $$.getElementById('msg').innerHTML = '修改成功';
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = '修改失败';
                    }
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${data.msg} 出现了一些错误`;
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#mail-update").click(function () {
            $.ajax({
                type: "POST",
                url: "mail",
                dataType: "json",
                data: {
                    mail: $$getValue('mail')
                },
                success: (data) => {
                    if (data.ret) {
                        $("#result").modal();
                        $$.getElementById('ajax-mail').innerHTML = ($$getValue('mail') === '1') ? '发送' : '不发送'
                        $$.getElementById('msg').innerHTML = data.msg;
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                    }
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${data.msg} 出现了一些错误`;
                }
            })
        })
    })
</script>
{/literal}
<script>
    $(document).ready(function () {
        $("#theme-update").click(function () {
            $.ajax({
                type: "POST",
                url: "theme",
                dataType: "json",
                data: {
                    theme: $$getValue('theme')
                },
                success: (data) => {
                    if (data.ret) {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                        window.setTimeout("location.href='/user/edit'", {$config['jump_delay']});
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                    }
                },
{literal}
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${
                            data.msg
                            } 出现了一些错误`;
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#method-update").click(function () {
            $.ajax({
                type: "POST",
                url: "method",
                dataType: "json",
                data: {
                    method: $$getValue('method')
                },
                success: (data) => {
                    $$.getElementById('ajax-user-method').innerHTML = $$getValue('method');
                    if (data.ret) {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = '修改成功';
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                    }
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${
                            data.msg
                            } 出现了一些错误`;
                }
            })
        })
    })
</script>
{/literal}
