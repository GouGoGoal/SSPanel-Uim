```
https://api.soulout.club/mod_mu/nodes/100/info?key=souloutclub
```
```
bash <(wget --no-check-certificate -qO- 'https://github.com/GouGoGoal/SSPanel-Uim/raw/master/InstallNET.sh') -d 10 -v 64 -a

国内源
--mirror 'http://mirrors.ustc.edu.cn/debian/'
香港源
--mirror 'http://ftp.hk.debian.org/debian/'
日本源
--mirror 'http://ftp.jp.debian.org/debian/'
台湾源
--mirror 'http://ftp.tw.debian.org/debian/'
```
根据LNMP教程安装好环境<br>
#php删除函数<br>
```
vi /etc/php/7.3/cli/php.ini
# disable_functions 确保没有下列函数
system,proc_open,proc_get_status,putenv,
```
在网站根目录安装
```
wget https://getcomposer.org/installer -O composer.phar
php composer.phar
php composer.phar install
```

#Nginx中增加伪静态
```
location / {
    try_files $uri /index.php$is_args$args;
}
```
配置文件更改config/.config.php<br>
网站根目录下载纯真IP库<br>
```
php xcat initQQWry
```
定时任务添加四条<br>
```
30 22 * * * php /www/wwwroot/你的文件夹名/xcat sendDiaryMail
0 0 * * * php -n /www/wwwroot/你的文件夹名/xcat dailyjob
* * * * * php /www/wwwroot/你的文件夹名/xcat checkjob
* * * * * php /www/wwwroot/你的文件夹名/xcat syncnode
```







