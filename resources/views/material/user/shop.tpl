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
                            <p>商品不可叠加，新购商品会覆盖旧商品的效果</p>
                            <p>在线设备以IP为单位，若你的多个设备使用同一个WiFi，则记为1个设备（部分节点此规则失效）</p>
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
                                <div class="shop-tat">
                                    {if {$shop->reset()} == '0' }
                                    <span>{$shop->bandwidth()}</span> / <span>{$shop->class_expire()}</span><span>
                                    {else}
                                    <span>{$shop->bandwidth()}</span> / <span>{$shop->reset()}</span> × <span> {$shop->class_expire()}</span>
                                    {/if}
                                    
                                </div>
                                <!--<div class="shop-content">
                                    <div class="shop-content-left">账号有效期:</div>
                                    <div class="shop-content-right">{$shop->expire()}<span>天</span></div>
                                    <div class="shop-content-left">重置周期:</div>
                                    <div class="shop-content-right">{if {$shop->reset()} == '0' }N / A{else}{$shop->reset_exp()}
                                            <span>天</span>
                                        {/if}</div>
                                    <div class="shop-content-left">重置频率:</div>
                                    <div class="shop-content-right">{if {$shop->reset()} == '0' }N / A{else}{$shop->reset_value()}
                                            <span>G</span>
                                            / {$shop->reset()}
                                            <span>天</span>
                                        {/if}</div>
                                </div>-->
                                <div class="shop-content-extra">
                                    {foreach $shop->content_extra() as $service}
                                        <div><span class="icon">{$service[0]}</span> {$service[1]}</div>
                                    {/foreach}
                                </div>
                                <a class="btn btn-brand-accent shop-btn" href="javascript:void(0);"
                                   onClick="buy('{$shop->id}',{$shop->auto_renew})">购买</a>
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
                                    <div>流量与时长不叠加，请临近过期或流量用尽后再购买</div>
                                     <div>购买前请前往购买记录里取消自动续费</div><br>
                                     <div>是否确定购买？</div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <p class="text-right">
                                    <button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal"
                                            id="coupon_input" type="button">确定
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
                                        <input  class="access-hide" id="autorenew" type="checkbox" >
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