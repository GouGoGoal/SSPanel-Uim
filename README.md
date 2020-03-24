
https://api.soulout.club/mod_mu/nodes/100/info?key=souloutclub<br>

bash <(wget --no-check-certificate -qO- 'https://github.com/GouGoGoal/SSPanel-Uim/raw/master/InstallNET.sh') -d 10 -v 64 -a<br>

国内源<br> --mirror 'http://mirrors.ustc.edu.cn/debian/'<br>
香港源<br> --mirror 'http://ftp.hk.debian.org/debian/'<br>
日本源<br> --mirror 'http://ftp.jp.debian.org/debian/'<br>
台湾源<br> --mirror 'http://ftp.tw.debian.org/debian/'<br>

根据LNMP教程安装好环境<br>
php删除函数 /etc/php/7.3/fpm/php.ini <br>
system,proc_open,proc_get_status,putenv,
Nginx中增加伪静态<br>
location / {<br>
    try_files $uri /index.php$is_args$args;<br>
}<br>
配置文件更改config/.config.php<br>
下载纯真IP库<br>
php xcat initQQWry <br>
定时任务添加四条<br>
30 22 * * * php /www/wwwroot/你的文件夹名/xcat sendDiaryMail<br>
0 0 * * * php -n /www/wwwroot/你的文件夹名/xcat dailyjob<br>
*/1 * * * * php /www/wwwroot/你的文件夹名/xcat checkjob<br>
*/1 * * * * php /www/wwwroot/你的文件夹名/xcat syncnode<br>







