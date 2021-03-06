{include file='header.tpl'}

<div class="authpage auth-reg">
    <div class="container">
        <section class="content-inner">
            <div class="auth-main auth-row">
                <div class="auth-top auth-row">
                    <a class="boardtop-left" href="/">
                        <div>首 页</div>
                    </a>
                    <div class="auth-logo">
                        <img src="/images/authlogo.jpg">
                    </div>
                    <a href="/auth/login" class="boardtop-right">
                        <div>登 录</div>
                    </a>
                </div>
                {if $config['register_mode']!='close'}
                    <div class="rowtocol">
                        <div class="auth-row">
                            <div class="form-group-label auth-row">
                                <label class="floating-label" for="name">昵称</label>
                                <input class="form-control maxwidth-auth" id="name" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="rowtocol">
                        <div class="auth-row">
                            <div class="form-group-label auth-row">
                                <label class="floating-label" for="email">邮箱(唯一凭证，请勿使用临时邮箱)</label>
                                <input class="form-control maxwidth-auth" id="email" type="text" maxlength="32">
                            </div>
                        </div>
                    </div>
                    <div class="rowtocol">
                        <div class="auth-row">
                            <div class="form-group-label auth-row">
                                <label class="floating-label" for="passwd">密码(大于8位)</label>
                                <input class="form-control maxwidth-auth" id="passwd" type="password">
                            </div>
                        </div>
                    </div>
                    <div class="rowtocol">
                        <div class="auth-row">
                            <div class="form-group form-group-label">
                                <label class="floating-label" for="repasswd">重复密码</label>
                                <input class="form-control maxwidth-auth" id="repasswd" type="password">
                            </div>
                        </div>
                    </div>
                    
                    {if $config['register_mode'] == 'invite'}
                        <div class="rowtocol">
                            <div class="auth-row">
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="code">邀请码(必填)</label>
                                    <input class="form-control maxwidth-auth" id="code" type="text">
                                </div>
                            </div>
                        </div>
                    {/if}
                    {if $enable_email_verify == 'true'}
                        <div class="rowtocol">
                            <div class="rowtocol">
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="email_code">邮箱验证码</label>
                                    <input class="form-control maxwidth-auth" id="email_code" type="text"
                                           onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;">
                                </div>
                            </div>
                            <div class="rowtocol">
                                <div class="form-group form-group-label">
                                    <button id="email_verify"
                                            class="btn-reg btn btn-block btn-brand-accent waves-attach waves-light">
                                        获取验证码
                                    </button>
                                    <a href="" onclick="return false;" data-toggle='modal'
                                       data-target='#email_nrcy_modal'
                                       class="auth-help-reg">收不到验证码？</a>
                                </div>
                            </div>
                        </div>
                    {/if}
                    <div class="rowtocol">
                        <div class="btn-auth auth-row">
                            <button id="tos" type="submit"
                                    class="btn-reg btn btn-block btn-brand waves-attach waves-light">确认注册
                            </button>
                        </div>
                    </div>
                {else}
                    <div class="form-group">
                        <p>{$config["appName"]} 已停止新用户注册，请联系网站管理员</p>
                    </div>
                {/if}
                <div class="auth-bottom auth-row auth-reg">
                    <div class="tgauth">

                        <p>注册即代表同意<a href="/tos">服务条款</a>，以及保证所录入信息的真实性，如有不实信息会导致账号被删除。</p>

                        <!-- <span>Telegram</span><button class="btn" id="calltgauth"><i class="icon icon-lg">near_me</i></button><span>快捷登录</span> -->
                    </div>
                </div>
            </div>
        </section>
        <div class="card auth-tg">
            <div class="card-main">

            </div>
        </div>
    </div>
</div>

<div aria-hidden="true" class="modal modal-va-middle fade" id="tos_modal" role="dialog" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-heading">
                <h2 class="modal-title">用户须知</h2>
            </div>
            <div class="modal-inner">
                {include file='reg_tos.tpl'}
            </div>
            <div class="modal-footer">
                <p class="text-right">
                    <button class="btn btn-flat btn-brand-accent waves-attach waves-effect"
                            data-dismiss="modal" type="button" id="cancel">我不同意
                    </button>
                    <button class="btn btn-flat btn-brand-accent waves-attach waves-effect" data-dismiss="modal"
                            id="reg"
                            type="button">我同意
                    </button>
                </p>
            </div>
        </div>
    </div>
</div>

<div aria-hidden="true" class="modal modal-va-middle fade" id="email_nrcy_modal" role="dialog" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-heading">
                <h2 class="modal-title">收不到验证码？</h2>
            </div>
            <div class="modal-inner">
                {include file='email_nrcy.tpl'}
            </div>
            <div class="modal-footer">
                <p class="text-right">
                    <button class="btn btn-flat btn-brand-accent waves-attach waves-effect" data-dismiss="modal"
                            type="button">我知道了
                    </button>
                </p>
            </div>
        </div>
    </div>
</div>

<div class="tiphidden"></div>

{include file='dialog.tpl'}

{include file='footer.tpl'}

{if $config['register_mode']!='close'}
    <script>
        $(document).ready(function () {
            function register() {
                {if $config['register_mode'] == 'invite'}
                code = $$getValue('code');
                {else}
                code = 0;
                if ((getCookie('code')) != '') {
                    code = getCookie('code');
                }
                {/if}
                document.getElementById("tos").disabled = true;

                $.ajax({
                    type: "POST",
                    url: "/auth/register",
                    dataType: "json",
                    data: {
                        email: $$getValue('email'),
                        name: $$getValue('name'),
                        passwd: $$getValue('passwd'),
                        repasswd: $$getValue('repasswd'),

                        code{if $enable_email_verify == 'true'},
                        emailcode: $$getValue('email_code'){/if},
                    },
                    success: (data) => {
                        if (data.ret == 1) {
                            $("#result").modal();
                            $$.getElementById('msg').innerHTML = data.msg;
                            window.setTimeout("location.href='/auth/login'", {$config['jump_delay']});
                        } else {
                            $("#result").modal();
                            $$.getElementById('msg').innerHTML = data.msg;
                            setCookie('code', '', 0);
                            $("#code").val(getCookie('code'));
                            document.getElementById("tos").disabled = false;
                            {if $geetest_html != null}
                            captcha.refresh();
                            {/if}
                        }
                    },
                    error: (jqXHR) => {
                        $("#msg-error").hide(10);
                        $("#msg-error").show(100);
                        $$.getElementById('msg-error-p').innerHTML = `发生错误：${
                                jqXHR.status
                                }`;
                        document.getElementById("tos").disabled = false;
                        {if $geetest_html != null}
                        captcha.refresh();
                        {/if}
                    }
                });
            }

            $("html").keydown(function (event) {
                if (event.keyCode == 13) {
                    $("#tos_modal").modal();
                }
            });
            
            $("#reg").click(function () {
                register();
            });

            $("#tos").click(function () {
                $("#tos_modal").modal();
            });
        })
    </script>
{/if}

{if $enable_email_verify == 'true'}
    <script>
        var wait = 60;

        function time(o) {
            if (wait == 0) {
                o.removeAttr("disabled");
                o.text("获取验证码");
                wait = 30;
            } else {
                o.attr("disabled", "disabled");
                o.text("重新发送(" + wait + ")");
                wait--;
                setTimeout(function () {
                            time(o)
                        },
                        1000)
            }
        }


        $(document).ready(function () {
            $("#email_verify").click(function () {
                time($("#email_verify"));

                $.ajax({
                    type: "POST",
                    url: "send",
                    dataType: "json",
                    data: {
                        email: $$getValue('email')
                    },
                    success: (data) => {
                        if (data.ret) {
                            $("#result").modal();
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
{/if}

{*dumplin:aff链*}
<script>
    {*dumplin：轮子1.js读取url参数*}
    function getQueryVariable(variable) {
        var query = window.location.search.substring(1);
        var vars = query.split("&");
        for (var i = 0; i < vars.length; i++) {
            var pair = vars[i].split("=");
            if (pair[0] == variable) {
                return pair[1];
            }
        }
        return "";
    }

    {*dumplin:轮子2.js写入cookie*}
    function setCookie(cname, cvalue, exdays) {
        var d = new Date();
        d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
        var expires = "expires=" + d.toGMTString();
        document.cookie = cname + "=" + cvalue + "; " + expires;
    }

    {*dumplin:轮子3.js读取cookie*}
    function getCookie(cname) {
        var name = cname + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i].trim();
            if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
        }
        return "";
    }

    {*dumplin:读取url参数写入cookie，自动跳转隐藏url邀请码*}
    if (getQueryVariable('code') != '') {
        setCookie('code', getQueryVariable('code'), 30);
        window.location.href = '/auth/register';
    }

    {if $config['register_mode'] == 'invite'}
    {*dumplin:读取cookie，自动填入邀请码框*}
    if ((getCookie('code')) != '') {
        $("#code").val(getCookie('code'));
    }
    {/if}


</script>
<script>
$(function () {
	$("#result").modal();
	$("#msg").html("若未收到验证码，请检查垃圾箱，尽量避免使用QQ邮箱。<br>再次尝试未果后，可主动发信至admin@soulout.club，管理员可手动开通。<br>注册成功后有2GB体验流量，体验良好后再进行付费");
});
</script>
