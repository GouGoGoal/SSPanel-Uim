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
                                                <ul><a href="https://www.lanzous.com/b552076" target="_blank">点击此处前往网盘</a></ul>
                                                <ul>请尽量避免安装360卫士/百度/2345等国产“安全”软件</ul>
                                                <ul>如果加速游戏可使用Netch或SStap，教程也请前往网盘寻找</ul>
												
											</ul>
										</div>

										<div class="tab-pane fade page-course" id="all_ssr_mac">
											<p>1：把下载的DMG包放入应用程序列表</p>
											<p><img src="/images/c_mac_1.png"/></p>
											<p>2：打开程式</p>
											<p><img src="/images/c_mac_2.png"/></p>
											<p>3：如提示不安全，请到系统偏好设置打开程式</p>
											<p><img src="/images/c_mac_3.png"/></p>
											<p>4：服务器-编辑订阅</p>
											<p><img src="/images/c_mac_4.png"/></p>
											<p>5：点击+号后填入订阅链接后手动更新订阅</p>
											<p><img src="/images/c_mac_5.png"/></p>
											<p><img src="/images/c_mac_4.png"/></p>
											<p>6：选择一个节点</p>
											<p><img src="/images/c_mac_6.png"/></p>
											<p>7：打开谷歌测试一下吧</p>
											<p><img src="/images/c_mac_7.png"/></p>
										</div>

										<div class="tab-pane fade page-course" id="all_ssr_linux">
											<h3>Ubuntu使用Shadowsocks-qt5科学上网</h3>
											<h4>说明：shadowsocks-qt5是ubuntu上一个可视化的版本</h4>
											<hr/>
											<h5>安装shadowsocks-qt5</h5>
											<pre><code>1.$ sudo add-apt-repository ppa:hzwhuang/ss-qt5
												2.$ sudo apt-get update
												3.$ sudo apt-get install shadowsocks-qt5</code></pre>
											<h5>如果安装成功之后，按<code>win</code>键搜索应该能够找到软件，如下图所示：</h5>
											<p><img src="/images/c-linux-1.png"/></p>
											<h5>配置shadowsocks-qt5</h5>
											<h6>填写对应的服务器IP，端口，密码，加密方式，红色标注地方请与图片一样</h6>
											<p><img src="/images/c-linux-4.png"/></p>
											<h5>配置系统代理模式</h5>
											<p><img src="/images/c-linux-5.png"/></p>
											<h5>配置浏览器代理模式（本次为Ubuntu自带FireFox浏览器为例）</h5>
											<p><img src="/images/c-linux-6.png"/></p>
											<h5>连接并开始上网</h5>
											<p><img src="/images/c-linux-7.png"/></p>
											<hr/>
											<p>本教程由仟佰星云试验截图整理，转载请附本文链接</p>
										</div>

										<div class="tab-pane fade page-course" id="all_ssr_ios">
                                            <h3>如果你有非中国区 Apple ID，可直接在应用商店搜索“Shadowrocket”(付费应用)</h3>
                                            <h3>网站网盘里有共享小火箭账号，可按照介绍安装“Shadowrocket”，完毕后请退出账号！！！</h3>
                                            <li>安装完成后打开软件点击右上角的“+”号，类型选择“Subscribe”，然后URL填写网站的订阅地址，分别备注为V2ray和SSR节点</li>
                                            <li>之后点击“完成”则会更新订阅，之后选择一个节点畅游网络</li>
                                            <li>新版的小火箭取消了更新订阅的按钮，我们可以在主界面的“服务器节点”这一栏，点击右方带圈的感叹号图标，之后点击完成来更新订阅</li>
                                            <li>“全局路由”解释</li>
                                            <li>配置：根据软件界面下方“配置”来对流量进行分流，推荐使用此<a href="https://github.com/souloutclub/smiproxylist">项目</a>中推荐的配置文件</li>
                                            <li>代理：即全局代理，选择此模式下你手机上所有的流量都经过“Shadowrocket”建议只有遇到无法访问的网站时切换成此规则，非常不推荐一直使用“代理”模式</li>
                                            <li>直连：相当于不开软件</li>
                                            <li>场景：根据场景进行分流，此规则用的不多</li>
										</div>
                                      
                                      
                                      
										<div class="tab-pane fade page-course" id="all_ssr_android">
											<p>1：下载“酸酸乳-安卓.apk”<a href="https://www.lanzous.com/b552076"> 相关下载</a></p>
                                          
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
                                            <h2 class="major">所有软件在主页“<a href="https://www.lanzous.com/b552076">相关下载</a>”里</h2>
											<h2 class="major">V2ray使用方法和SSR类似，也是订阅使用</h2>
                                            <h2 class="major">Win端V2ray教程已整合到电脑教程，请<a href="https://www.lanzous.com/b552076" target="_blank">下载</a>查看</h2>
                                            <h3 class="major">安卓端下载V2rayNG</h3>
                                               <p>如图添加订阅，同样添加订阅，然后再更新</p>
                                               <p>在“设置”里建议选择分应用代理，路由模式为“绕过局域网和大陆地址”</p> 
                                               <p><img src="/images/v2ray3.jpg"/></p>
                                               <p><img src="/images/v2ray4.jpg"/></p>
                                               <p>有时候V2ray流媒体解锁会失效，我们可以设置中打开“启用本地DNS”，然后将“远程DNS”改为127.0.0.1</p> 
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



