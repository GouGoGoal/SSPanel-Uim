<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<meta charset="UTF-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
	<meta name="theme-color" content="#4285f4">
	<title>{$config["appName"]}</title>

	<!-- css -->
	<link href="/theme/material/css/base.min.css" rel="stylesheet">
	<link href="/theme/material/css/project.min.css" rel="stylesheet">
    <link href="https://fonts.loli.net/css?family=Roboto:300,300italic,400,400italic,500,500italic|Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="/theme/material/css/user.css">
	<!-- jquery -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1"></script>
    <script src="https://cdn.jsdelivr.net/gh/davidshimjs/qrcodejs@gh-pages/qrcode.min.js"></script>
	<!-- js -->
	<script src="/assets/js/fuck.js"></script>
</head>
<body class="page-orange">
	<header class="header header-orange header-transparent header-waterfall ui-header">
		<ul class="nav nav-list pull-left">
			<div>
				<a data-toggle="menu" href="#ui_menu">
					<span class="icon icon-lg text-white">menu</span>
				</a>
			</div>
		</ul>

		<ul class="nav nav-list pull-right">
			<div class="dropdown margin-right">
				<a class="dropdown-toggle padding-left-no padding-right-no" data-toggle="dropdown">
				{if $user->isLogin}
					<span class="access-hide">{$user->user_name}</span>
              	    <span class="icon icon-cd margin-right">account_circle</span>
					</a>
					<ul class="dropdown-menu dropdown-menu-right">
						<li>
							<a class="waves-attach" href="/user/"><span class="icon icon-lg margin-right">account_box</span>用戶中心</a>
						</li>

						<li>
							<a class="padding-right-cd waves-attach" href="/user/logout"><span class="icon icon-lg margin-right">exit_to_app</span>登出</a>
						</li>
					</ul>
				{else}
					<span class="access-hide">未登錄</span>
             		 <span class="icon icon-lg margin-right">account_circle</span>
					<ul class="dropdown-menu dropdown-menu-right">
						<li>
							<a class="padding-right-lg waves-attach" href="/auth/login"><span class="icon icon-lg margin-right">account_box</span>登錄</a>
						</li>
						<li>
							<a class="padding-right-lg waves-attach" href="/auth/register"><span class="icon icon-lg margin-right">pregnant_woman</span>註冊</a>
						</li>
					</ul>
				{/if}

			</div>
		</ul>
	</header>
	<nav aria-hidden="true" class="menu menu-left nav-drawer nav-drawer-md" id="ui_menu" tabindex="-1">
		<div class="menu-scroll">
			<div class="menu-content">
				<a class="menu-logo" href="/"><i class="icon icon-lg" >language</i>&nbsp;{$config["appName"]}</a>
				<ul class="nav">
					<li>
						<a class="waves-attach" data-toggle="collapse" href="#ui_menu_me">我的</a>
						<ul class="menu-collapse collapse in" id="ui_menu_me">
							<li>
								<a href="/user">
									<i class="icon icon-lg">account_balance_wallet</i>&nbsp;用戶中心
								</a>
							</li>

							<li>
								<a href="/user/edit">
									<i class="icon icon-lg">sync_problem</i>&nbsp;資料編輯
								</a>
							</li>

						

							{if $config['enable_ticket']=='true'}
                            <li>
								<a href="/user/ticket">
									<i class="icon icon-lg">question_answer</i>&nbsp;工單系統
								</a>
							</li>
							{/if}

                            <li>
								<a href="/user/invite">
									<i class="icon icon-lg">loyalty</i>&nbsp;邀請鏈接
								</a>
							</li>
						</ul>


						<a class="waves-attach" data-toggle="collapse" href="#ui_menu_use">使用</a>
						<ul class="menu-collapse collapse in" id="ui_menu_use">
							<li>
								<a href="/user/node">
									<i class="icon icon-lg">airplanemode_active</i>&nbsp;節點列表
								</a>
							</li>
							<li>
							       <a href="/state/" target="_blank">
								    <i class="icon icon-lg">adb</span>&nbsp</i>&nbsp;節點监控
								</a>
							</li>
							<li>
                            <!--<a href="/user/relay">
                                <i class="icon icon-lg">compare_arrows</i>&nbsp;中轉規則</a>
                          </li>-->
                          	<li>
								<a href="/user/trafficlog">
									<i class="icon icon-lg">hourglass_empty</i>&nbsp;流量記錄
								</a>
							</li>
							<li>
								<a href="/user/tutorial">
									<i class="icon icon-lg">start</i>&nbsp;使用教程
								</a>
							</li>
							<li>
								<a href="https://www.lanzous.com/b552076" target="_blank">
									<i class="icon icon-lg">apps</i>&nbsp;应用网盘
								</a>
							</li>
                          
						</ul>

						<a class="waves-attach" data-toggle="collapse" href="#ui_menu_help">商店</a>
						<ul class="menu-collapse collapse in" id="ui_menu_help">
                          	<li>
								<a href="/user/code">
									<i class="icon icon-lg">code</i>&nbsp;充值余額
								</a>
							</li>

							<li>
								<a href="/user/shop">
									<i class="icon icon-lg">shop</i>&nbsp;套餐購買
								</a>
							</li>

							<li><a href="/user/bought"><i class="icon icon-lg">shopping_cart</i>&nbsp;購買記錄</a></li>


                          {if $config['enable_donate']=='true'}
							<li>
								<a href="/user/donate">
									<i class="icon icon-lg">attach_money</i>&nbsp;捐贈公示
								</a>
							</li>
							{/if}
                          </ul>
                        <a class="waves-attach" data-toggle="collapse" href="#ui_menu_contact">聯繫</a>
                        <ul class="menu-collapse collapse in" id="ui_menu_contact">
                       <li>
							<!--<a href="http://wpa.qq.com/msgrd?v=3&uin=1939442111&site=qq&menu=yes" target="_blank">
							    <i class="icon icon-lg">face</i>&nbsp;站長の扣扣
							</a>-->
						</li>
                       
                        <li>
                            <a class="copy-gmail"  data-clipboard-text="admin@soulout.club">
						         <i class="icon icon-lg">email</i>&nbsp;站長の郵箱
						    </a>
						</li>
						<li>
							<a href="https://t.me/joinchat/Jnw4xVkByIsW-gf4HOat5g" target="_blank">
							    <i class="icon icon-lg">near_me</i>&nbsp;電報の群組
							</a>
						</li>
                        </ul>
                      

						{if $user->isAdmin()}
							<li>
								<a href="/admin">
									<i class="icon icon-lg">person_pin</i>&nbsp;管理面板
								</a>
							</li>
						{/if}

                        {if $can_backtoadmin}
                            <li>
                                <a class="padding-right-cd waves-attach" href="/user/backtoadmin"><span class="icon icon-lg margin-right">backtoadmin</span>返回管理員身份</a>
                            <li>
                        {/if}


					</li>
				</ul>
			</div>
		</div>
	</nav>

  <script>
$(function(){
	new Clipboard('.copy-gmail');
});

$(".copy-gmail").click(function () {
	$("#result").modal();
	$("#msg").html("已複製到剪貼板：admin@soulout.club");
});
</script>


{if $config["enable_mylivechat"] == 'true'}{include file='mylivechat.tpl'}{/if}
