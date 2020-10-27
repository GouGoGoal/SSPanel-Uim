{include file='user/main.tpl'}

	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">使用教程</h1>
			</div>
		</div>
      
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="ui-card-wrap">
                  
					
						<div class="col-lg-12 col-md-12">
							<div class="card">
								<div class="card-main">
                                  
									<div class="card-inner">
										<nav class="tab-nav margin-top-no">
											<ul class="nav nav-list">
												<li class="active">
													<a class="" data-toggle="tab" href="#all_ssr_windows"><i class="icon icon-lg">desktop_windows</i>&nbsp;Win&游戏</a>
												</li>
												<li>
                                                  	<a class="" data-toggle="tab" href="#all_ssr_android"><i class="icon icon-lg">android</i>&nbsp;Android</a>
													
												</li>
                                              <li>
													<a class="waves-attach" data-toggle="tab" href="#all_ssr_ios"><i class="icon icon-lg">phone_iphone</i>&nbsp;iOS</a>
															</li>
												<li>
													<a class="" data-toggle="tab" href="#all_ssr_linux"><i class="icon icon-lg">dvr</i>&nbsp;Linux</a>
												</li>
												
												<li>
												<a class="" data-toggle="tab" href="#all_ssr_mac"><i class="icon icon-lg">laptop_mac</i>&nbsp;MacOS</a>
												</li>
													<li>
												<a class="" data-toggle="tab" href="#all_v2ray"><i class="icon icon-lg">laptop_mac</i>&nbsp;V2ray</a>
												</li>
											</ul>
										</nav>
                                      
										<div class="tab-pane fade active in page-course" id="all_ssr_windows">
                                                <ul>Win端SSR&V2ray使用教程已随软件打包放在了网盘里，可下载查看</ul>
                                                <ul><a href="https://soulout.lanzous.com/b0vg7mfg" target="_blank">点击此处前往网盘</a></ul>
                                                <ul>请尽量避免安装360卫士/百度/2345等国产“安全”软件</ul>
                                                <ul>如果加速游戏可使用Netch或SStap，教程也请前往网盘寻找</ul>
												
											</ul>
										</div>

										<div class="tab-pane fade page-course" id="all_ssr_mac">
											<p>请在网盘中下载：V2rayU.dmg</p>
											<p>使用方法见其<a href='https://github.com/yanue/V2rayU/wiki/V2rayU%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E'>Github地址</a></p>

										</div>

										<div class="tab-pane fade page-course" id="all_ssr_linux">
                                          <p>你都会玩Linux了，使用教程自己去看吧</p>
                                          <p><a href='https://github.com/jiangxufeng/v2rayL'>Github地址</a></p>
										</div>

										<div class="tab-pane fade page-course" id="all_ssr_ios">
                                            <h3>如果你有非中国区 Apple ID，可直接在应用商店搜索“Shadowrocket”(付费应用)</h3>
                                            <h3>网站网盘里有共享小火箭账号，可按照介绍安装“Shadowrocket”，完毕后请退出账号！！！</h3>
                                            <li>安装完成后打开软件点击右上角的“+”号，类型选择“Subscribe”，然后URL填写网站的订阅地址，分别备注为V2ray和SSR节点</li>
                                            <li>之后点击“完成”则会更新订阅，之后选择一个节点畅游网络</li>
                                            <li>可以在“设置”“服务器订阅”中勾选“打开时更新”，每次打开会有更新提示</li>
                                            <li>也可以手动更新订阅，订阅菜单处往右滑动是更新按钮</li>
                                            
                                            <li>“全局路由”解释</li>
                                            <li>配置：根据软件界面下方“配置”来对流量进行分流，推荐使用此<a href="https://github.com/souloutclub/smiproxylist">项目</a>中推荐的配置文件</li>
                                            <li>代理：即全局代理，选择此模式下你手机上所有的流量都经过“Shadowrocket”建议只有遇到无法访问的网站时切换成此规则，非常不推荐一直使用“代理”模式</li>
                                            <li>直连：相当于不开软件</li>
                                            <li>场景：根据场景进行分流，此规则用的不多</li>
										</div>
                                      
                                      
                                      
										<div class="tab-pane fade page-course" id="all_ssr_android">
											<p>1：下载SSR应用<a href="https://soulout.lanzous.com/b0vg7mfg"> 相关下载</a>(网盘中可能存放多个SSR应用，使用方法大致相同，都是订阅使用)</p>
                                          
											<p>2：添加订阅并更新,复制<a href="/user/index">主页</a>的订阅连接</p>
                                          
											<p><img src="/images/c_android_2.jpg"/></p>
											<p><img src="/images/c_android_3.jpg"/></p>
											<p><img src="/images/c_android_4.jpg"/></p>
											<p><img src="/images/c_android_5.jpg"/></p>
											<p>3：选择一个节点并设置路由</p>
											<p><img src="/images/c_android_6.jpg"/></p>
											<p><img src="/images/c_android_7.jpg"/></p>
                                            <p>自定ACL有去广告功能，具体请谷歌</p>
											<p>4：连接</p>
											<p><img src="/images/c_android_8.jpg"/></p>
                                          <p>可自行修改DNS，建议China DNS修改为119.29.29.29:53，DNS修改为1.1.1.1:53（这东西无所谓的）</p>
                                            <p>除游戏节点外，其他不建议打开UDP转发</p>
										</div>

                                      <div class="tab-pane fade" id="all_v2ray">
                                            <h3 class="major">v2ray对时间精度要求很高，请确保你的设备为东八区时间，误差不超过2分钟</h3>
                                            <h2 class="major">所有软件在主页“<a href="https://soulout.lanzous.com/b0vg7mfg">相关下载</a>”里</h2>
											<h2 class="major">V2ray使用方法和SSR类似，也是订阅使用</h2>
                                            <h2 class="major">Win端V2ray教程已整合到电脑教程，请<a href="https://soulout.lanzous.com/b0vg7mfg" target="_blank">下载</a>查看</h2>
                                            <h3 class="major">安卓端下载V2rayNG</h3>
                                               <p>如下图按步骤添加V2ray订阅，然后再更新，更新成功后节点列表会显示出节点，选择一个非账号信息的节点连接即可</p>
					       <p><img src="/images/v2ray1.jpg"/></p>
					       <p><img src="/images/v2ray2.jpg"/></p>
                                               <p>在“设置”里建议使用两种代理方式，一种是分应用代理，将想走代理的应用(例如谷歌商店、谷歌框架等)选中，路由设置里预定义规则选择全局即可；另一种是不开启分应用代理，将预定义规则设置为“绕过局域网或大陆地址”，此时你手机中所有流量都会经过该软件进行分流，属于国外的地址将会通过节点进行访问</p> 
                                               <p><img src="/images/v2ray3.jpg"/></p>
                                               <h3 class="major">苹果用户只需更新最新版小火箭即可，最好添加订阅备注以区分V2ray和SSR</h3>
                                              
                                          
										</div>
									</div>

								</div>
							</div>
							
						
				
							
						
						{include file='dialog.tpl'}
						
					</div>
						
					
				</div>
			</section>
		</div>
	</main>







{include file='user/footer.tpl'}



