<!DOCTYPE HTML> 
<!--
	Dimension by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
{if $config['appName'] == '跑路'}
<script>window.location.href='{$config["baseUrl"]}/paolu.html';</script>
{/if}
<html>
	<head>
		<title>{$config["appName"]}</title>
        <meta name="keywords" content=""/>
		<meta name="wolfpay" content="0f80ff5efb730572072ae261c5b380fb">
        <meta name="description" content=""/>
        <meta charset="utf-8" />
        <link rel="shortcut icon" href="/favicon.ico"/>
        <link rel="bookmark" href="/favicon.ico"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
	<link rel="stylesheet" href="/assets/css/main.css"/>

        <noscript><link rel="stylesheet" href="/assets/css/noscript.css" /></noscript>
	<link href="https://cdn.jsdelivr.net/npm/nprogress@0.2.0/nprogress.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/nprogress@0.2.0/nprogress.min.js"></script>
  </head>
  
       <body>
			<div id="wrapper">
              <!--首頁開始-->
					<header id="header">
						<div class="logo">
						<span class="icon fa-linux"></span>
                      </div>
                       {if $user->isLogin}
						<div class="content">
							<div class="inner">
                                  <p>用戶：<code>{$user->user_name}</code>
                                    等級：{if $user->class!=0}
											<code>VIP{$user->class}</code>
                                          {else}
                                             <code>免費</code>
                                              {/if}
                                    過期時間：{if $user->class_expire!="1989-06-04 00:05:00"}
											    <code>{$user->class_expire}</code>
                                          {else}
                                              <code>不過期</code>
                                              {/if}</p>
                                  <p>總流量：<code>{$user->enableTraffic()}</code>
                                  已用流量：<code>{$user->usedTraffic()}</code>
                                  剩余流量：<code>{$user->unusedTraffic()}</code></p>
                          </div>
                      </div>	
					  	<nav>
							<ul>
                                <li><a href="#4">联系我们</a></li>
					            <li><a href="/user">用戶中心</a></li>
								<li><a href="/user/logout">退出登錄</a></li>
								<li><a href="/state/" target="_blank">節點監控</a></li>
                        </ul>
						</nav>
                              {else}
                              <div class="content">
							<div class="inner">
								<h1>{$config["appName"]}</h1>
								<!--
								如果想自定義文本請刪除下面這段script代碼,格式為
								<p>自定義文本</p>
								-->
								<!--<div id="hitokoto"><script src="https://international.v1.hitokoto.cn/?encode=js&select=%23hitokoto" defer></script></div>-->
								<p>少年啊，成为神话吧</p>
                          </div>
                      </div>	
                              <nav>
							<ul>
                               <li><a href="#1">特色介绍</a></li>
								<li><a href="/auth/login">登錄</a></li>
								<li><a href="/auth/register">註冊</a></li>
								<li><a href="#4">服務條款</a></li>
                           </ul>
						</nav>
                              {/if}

              </header> 
              <!--首頁結束-->
					<div id="main">
					    <!--標簽1開始-->
                        <article id="1">
                            <h2 class="major">特色介绍</h2>
                            <p>独家流媒体解锁，非游戏节点均支持各区流媒体，香港节点也可流畅观看动画疯</p>
                            <p>大流量套餐，流量不再省省省</p>
                            <p>国内中转加速，电信、长宽用户有福了</p>
                            <p>内含游戏节点，且无需额外付费</p>
                            <p>不限速度，畅快浏览(除游戏节点，实际速度受限于本地环境)</p>
							<p>夜间部分节点流量消耗减半</p>
					    </article>
                        <!--標簽4開始-->
                        <article id="4">
						   <h2 class="major">服务条款</h2>
						   <p>注册后有24小时2G流量试用，不设退款服务，请试用满意后再进行充值</p>
						   <p>本站需客户具备一定的动手能力，如果脑力不发达请寻找移步一键VPN</p>
						   <p>请遵守当地国家或地区的法律，若违反相关规则，我站有权利删除违规用户</p>
                        </article>
                      	<article id="login">  
		
								<h2 class="major">登錄</h2>
								<form method="post" action="javascript:void(0);">
									<div class="field half first">
										<label for="email2">郵箱</label>
										<input type="text" name="Email" id="email2" />
									</div>
									<div class="field half">
										<label for="passwd">密碼</label>
										<input type="password" name="Password" id="passwd" />
									</div>
									
									<ul class="actions">
										<li><input id="login" type="submit" value="登錄" class="special" /></li>
										<li><input type="reset" value="清空" /></li>
									</ul>
								</form>
						

                             	<div class="field half">
											<input value="week" id="remember_me" name="remember_me" type="checkbox" checked>
											<label for="remember_me">記住我</label>
								</div>


								<br>

								<div id="result" role="dialog" >
													<p color class="h5 margin-top-sm text-black-hint" id="msg"></p>
								</div>
						</article> 
                      <!--全部標簽結束-->
                      
                              </div>
                     <!-- 版權底部 -->
                      <footer id="footer">
                   <p class="copyright">&copy;{date("Y")} {$config["appName"]}</p>
                      </footer>
              <!-- 版權結束 -->
			 </div>
                <!-- BG -->
			<div id="bg"></div>
	        	<!-- Scripts -->
			<script src="https://cdn.jsdelivr.net/npm/jquery@1.11.3"></script>
			<script src="https://cdn.jsdelivr.net/gh/ajlkn/skel@3.0.1/dist/skel.min.js"></script>
			<script src="/assets/js/util.js"></script>
         <script src="/assets/js/main.js"></script>
	     <script language="javascript">
try{
	if(window.console&&window.console.log){
        
		console.log("%c{$config["appName"]}"," text-shadow: 0 1px 0 #ccc,0 2px 0 #c9c9c9,0 3px 0 #bbb,0 4px 0 #b9b9b9,0 5px 0 #aaa,0 6px 1px rgba(0,0,0,.1),0 0 5px rgba(0,0,0,.1),0 1px 3px rgba(0,0,0,.3),0 3px 5px rgba(0,0,0,.2),0 5px 10px rgba(0,0,0,.25),0 10px 10px rgba(0,0,0,.2),0 20px 20px rgba(0,0,0,.15);font-size:5em");
		console.log("%chttps://github.com/NimaQu/ss-panel-v3-mod_Uim","background: rgba(252,234,187,1);background: -moz-linear-gradient(left, rgba(252,234,187,1) 0%, rgba(175,250,77,1) 12%, rgba(0,247,49,1) 28%, rgba(0,210,247,1) 39%,rgba(0,189,247,1) 51%, rgba(133,108,217,1) 64%, rgba(177,0,247,1) 78%, rgba(247,0,189,1) 87%, rgba(245,22,52,1) 100%);background: -webkit-gradient(left top, right top, color-stop(0%, rgba(252,234,187,1)), color-stop(12%, rgba(175,250,77,1)), color-stop(28%, rgba(0,247,49,1)), color-stop(39%, rgba(0,210,247,1)), color-stop(51%, rgba(0,189,247,1)), color-stop(64%, rgba(133,108,217,1)), color-stop(78%, rgba(177,0,247,1)), color-stop(87%, rgba(247,0,189,1)), color-stop(100%, rgba(245,22,52,1)));background: -webkit-linear-gradient(left, rgba(252,234,187,1) 0%, rgba(175,250,77,1) 12%, rgba(0,247,49,1) 28%, rgba(0,210,247,1) 39%, rgba(0,189,247,1) 51%, rgba(133,108,217,1) 64%, rgba(177,0,247,1) 78%, rgba(247,0,189,1) 87%, rgba(245,22,52,1) 100%);background: -o-linear-gradient(left, rgba(252,234,187,1) 0%, rgba(175,250,77,1) 12%, rgba(0,247,49,1) 28%, rgba(0,210,247,1) 39%, rgba(0,189,247,1) 51%, rgba(133,108,217,1) 64%, rgba(177,0,247,1) 78%, rgba(247,0,189,1) 87%, rgba(245,22,52,1) 100%);background: -ms-linear-gradient(left, rgba(252,234,187,1) 0%, rgba(175,250,77,1) 12%, rgba(0,247,49,1) 28%, rgba(0,210,247,1) 39%, rgba(0,189,247,1) 51%, rgba(133,108,217,1) 64%, rgba(177,0,247,1) 78%, rgba(247,0,189,1) 87%, rgba(245,22,52,1) 100%);background: linear-gradient(to right, rgba(252,234,187,1) 0%, rgba(175,250,77,1) 12%, rgba(0,247,49,1) 28%, rgba(0,210,247,1) 39%, rgba(0,189,247,1) 51%, rgba(133,108,217,1) 64%, rgba(177,0,247,1) 78%, rgba(247,0,189,1) 87%, rgba(245,22,52,1) 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fceabb', endColorstr='#f51634', GradientType=1 );font-size:3em");
	}
}catch(e){
};
 
</script>
<!-- 進度條 -->
<script>
	$(function() {
       $(window).load(function(){
	   NProgress.done();
		});
       NProgress.set(0.0);
       NProgress.configure({ showSpinner: false });
       NProgress.configure({ minimum: 0.4 });
       NProgress.configure({ easing: 'ease', speed: 1200 });
       NProgress.configure({ trickleSpeed: 200 });
       NProgress.configure({ trickleRate: 0.2, trickleSpeed: 1200 });
       NProgress.inc();
       $(window).ready(function(){
	   NProgress.start();
		});
	})


</script>
</body>
</html>
