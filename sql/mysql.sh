#!/bin/bash

localhost_user=root
localhost_pass=c57758ee053c16c0

db=sspanel

set_user_pass() {
    read -p "请输入您需要设置的 mysql用户名：" mysql_user
    read -p "请输入您需要设置的 mysql密码  ：" mysql_pass
}

add() {
    mysql -u$localhost_user -p$localhost_pass -e "GRANT SELECT ON $db.unblockip to $mysql_user@'%' identified by '$mysql_pass';";
    mysql -u$localhost_user -p$localhost_pass -e "GRANT SELECT,INSERT ON $db.blockip to $mysql_user@'%' identified by '$mysql_pass';";
    mysql -u$localhost_user -p$localhost_pass -e "GRANT INSERT ON $db.ss_node_online_log to $mysql_user@'%' identified by '$mysql_pass';";
    mysql -u$localhost_user -p$localhost_pass -e "GRANT INSERT ON $db.ss_node_info to $mysql_user@'%' identified by '$mysql_pass';";
    mysql -u$localhost_user -p$localhost_pass -e "GRANT INSERT ON $db.alive_ip to $mysql_user@'%' identified by '$mysql_pass';";
    mysql -u$localhost_user -p$localhost_pass -e "GRANT INSERT ON $db.detect_log to $mysql_user@'%' identified by '$mysql_pass';";
    mysql -u$localhost_user -p$localhost_pass -e "GRANT INSERT ON $db.user_traffic_log to $mysql_user@'%' identified by '$mysql_pass';";
    mysql -u$localhost_user -p$localhost_pass -e "GRANT SELECT ON $db.detect_list to $mysql_user@'%' identified by '$mysql_pass';";
    mysql -u$localhost_user -p$localhost_pass -e "GRANT SELECT ON $db.relay to $mysql_user@'%' identified by '$mysql_pass';";
    mysql -u$localhost_user -p$localhost_pass -e "GRANT UPDATE(\`node_heartbeat\`,\`node_bandwidth\`),SELECT(\`id\`,\`node_ip\`,\`node_group\`,\`node_class\`,\`node_speedlimit\`,\`node_bandwidth\`,\`node_bandwidth_limit\`,\`traffic_rate\`,\`mu_only\`,\`sort\`) ON $db.ss_node to $mysql_user@'%' identified by '$mysql_pass';";
    mysql -u$localhost_user -p$localhost_pass -e "GRANT  UPDATE(\`u\`,\`d\`,\`t\`),SELECT(\`id\`,\`port\`,\`u\`,\`d\`,\`class\`,\`is_admin\`,\`expire_in\`,\`transfer_enable\`,\`passwd\`,\`enable\`,\`method\`,\`obfs\`,\`obfs_param\`,\`protocol\`,\`protocol_param\`,\`id\`,\`node_speedlimit\`,\`forbidden_ip\`,\`forbidden_port\`,\`disconnect_ip\`,\`is_multi_user\`,\`node_group\`) ON $db.user to $mysql_user@'%' identified by '$mysql_pass';";
}

revoke() {
    mysql -u$localhost_user -p$localhost_pass -e "REVOKE all privileges ON $db.unblockip FROM $mysql_user@'%';";
    mysql -u$localhost_user -p$localhost_pass -e "REVOKE all privileges ON $db.blockip FROM $mysql_user@'%';";
    mysql -u$localhost_user -p$localhost_pass -e "REVOKE all privileges ON $db.ss_node_online_log FROM $mysql_user@'%';";
    mysql -u$localhost_user -p$localhost_pass -e "REVOKE all privileges ON $db.ss_node_info FROM $mysql_user@'%';";
    mysql -u$localhost_user -p$localhost_pass -e "REVOKE all privileges ON $db.alive_ip FROM $mysql_user@'%';";
    mysql -u$localhost_user -p$localhost_pass -e "REVOKE all privileges ON $db.detect_log FROM $mysql_user@'%';";
    mysql -u$localhost_user -p$localhost_pass -e "REVOKE all privileges ON $db.user_traffic_log FROM $mysql_user@'%';";
    mysql -u$localhost_user -p$localhost_pass -e "REVOKE all privileges ON $db.detect_list FROM $mysql_user@'%';";
    mysql -u$localhost_user -p$localhost_pass -e "REVOKE all privileges ON $db.relay FROM $mysql_user@'%';";
    mysql -u$localhost_user -p$localhost_pass -e "REVOKE all privileges ON $db.ss_node FROM $mysql_user@'%';";
    mysql -u$localhost_user -p$localhost_pass -e "REVOKE all privileges ON $db.user FROM $mysql_user@'%';";
}


ssr_privi() {
    read -p "1：添加用户  2：删除用户  3：查看ip表权限 " choice
    case $choice in
        1)
        set_user_pass
        add
        ;;
        2)
        read -p "请输入您要删除权限的用户： " mysql_user
        revoke
        ;;
        3)
        host=$(mysql -u$localhost_user -p$localhost_pass -e "select Host from mysql.tables_priv;")
        echo $host | sed 's/Host //g' | tr ' ' '\n' | sort -n | uniq -c
        ;;
    esac
}


add_all_privi() {
    set_user_pass
    mysql -u$localhost_user -p$localhost_pass -e "grant all on $db.* to $mysql_user@'$ip' identified by '$mysql_pass';"
}

show_mysql_login() {
    mysql -u$localhost_user -p$localhost_pass -e "select Host,User from mysql.user;"
}

delete_mysql_login() {
    read -p "输入 Host: " Host
    read -p "输入 User: " User
    mysql -u$localhost_user -p$localhost_pass -e "delete from mysql.user where Host = '$Host' and User = '$User';"
    show_mysql_login
}

read -p "1:添加ss-mysql账号  2:添加mysql-管理员帐号 3:查看mysql用户 4:删除mysql用户  | " action

case $action in
    1)
    ssr_privi
    ;;
    2)
    add_all_privi
    ;;
    3)
    show_mysql_login
    ;;
    4)
    delete_mysql_login
    ;;
esac
