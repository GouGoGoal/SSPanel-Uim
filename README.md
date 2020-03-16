自己down一份<br>

https://blog.anank.ke/w/SSPanel_with_DROP_DATABASE_BT<br>


https://api.soulout.club/mod_mu/nodes/100/info?key=souloutclub<br>


bash <(wget --no-check-certificate -qO- 'https://github.com/GouGoGoal/SSPanel-Uim/raw/master/InstallNET.sh') -d 10 -v 64 -a<br>

#只google密钥登陆<br>
mkdir /root/.ssh && echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA5qK3fDbxZshKP3MbQo4xm1YNmTQsHcapbF8wAXJJcCgxtzujH9QuFCeQzsQ3QET2qZgG1k0GfTV6slRdrJJeI8fdwFgRc28JEhXh4rGx8MUdotJh8eVAnygWATBtet2Au5gpn3s3s44XqgnWXY+bRGJ6WoB58/3fjPG1YZIR5wh9knNxRt/9VO8YCTBqQP3z5hdPuNldx3jgIuFNhcI1qBVnQZ2czC2Zv8sHDDuiuNoaomKsg7LgbhKPnvRfEGb+yZaU/KKwbEJwbFcZkT7QiW90OhYVKT2+K8xEsUpR4ocH+SxgvFrpyKAXkSqF/Wwe32baAlzrNwucLdsS+jBk3w=="<br> >>/root/.ssh/authorized_keys
sed -ri 's/^#?PermitRootLogin.*/#PermitRootLogin yes/g' /target/etc/ssh/sshd_config<br>


国内源<br> --mirror 'http://mirrors.ustc.edu.cn/debian/'<br>
香港源<br> --mirror 'http://ftp.hk.debian.org/debian/'<br>
日本源<br> --mirror 'http://ftp.jp.debian.org/debian/'<br>
台湾源<br> --mirror 'http://ftp.tw.debian.org/debian/'<br>



