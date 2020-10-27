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
								<p>久在樊笼里，复得返自然。</p>
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
                            <p>独家流媒体解锁，各节点均支持观看港日美台流媒体</p>
                            <p>设置了流量重置类套餐，最高可享每天999G</p>
                            <p>国内中转加速，直连速度慢的可以选择中转节点</p>
                            <p>节点均不限速度，畅快浏览(实际速度受限于本地网络环境)</p>
			    <p>夜间部分节点流量消耗减半，挂机下载好选择</p>
			    <p>支持TLSv1.3协议加密，伪装性更佳，速度更快</p>
					    </article>
                        <!--標簽4開始-->
                        <article id="4">
						   <h2 class="major">服务条款</h2>
&#12288;&#12288;请规范互联网信息服务活动，抵制不良信息，共同维护良好的上网环境。<br>

&#12288;&#12288;主动传播违反《七条底线》和《九不准》的内容，将会无条件封停账号，并将违法行文和访问记录提交给有关部门备案，请自觉遵守，更不要把您的账号分享给别人使用一面造成麻烦。<br>

<strong> "七条底线"</strong><br>
&#12288;&#12288;法律法规底线、社会主义制度底线、国家利益底线、公民合法权益底线、社会公共秩序底线、道德风尚底线和信息真实性底线。<br>
	
<strong> "九不准"</strong><br>
&#12288;&#12288;《互联网信息服务管理方法》第十五条规定，互联网信息服务提供者不得制作、复制、发布、传播含有下列内容的信息：<br>
&#12288;&#12288;&#12288;&#12288;（一）反对宪法所确定的基本原则的；<br>
&#12288;&#12288;&#12288;&#12288;（二）危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；<br>
&#12288;&#12288;&#12288;&#12288;（三）损害国家荣誉和利益的；<br>
&#12288;&#12288;&#12288;&#12288;（四）煽动民族仇恨、民族歧视、破坏民族团结的；<br>
&#12288;&#12288;&#12288;&#12288;（五）破坏国家宗教政策、宣扬邪教和封建迷信的；<br>
&#12288;&#12288;&#12288;&#12288;（六）散布谣言，扰乱社会秩序，破坏社会稳定的；<br>
&#12288;&#12288;&#12288;&#12288;（七）散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；<br>
&#12288;&#12288;&#12288;&#12288;（八）侮辱或者诽谤他人，侵害他人合法权益的；<br>
&#12288;&#12288;&#12288;&#12288;（九）含有法律、行政法规禁止的其他内容的；<br>
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
