# Ansible Role:MySql

安装二进制mysql

## 系统要求

- Ubuntu
- Centos

## 用法

```sh
  vars:
    mysql_version: mysql-5.7.37-linux-glibc2.12-x86_64
    mysql_data_dir: /data/mysql
    mysql_root_dir: /usr/local/mysql
    mysql_config_file: /etc/my.cnf
    mysql_log_dir: /data/logs/mysql
    mysql_run_dir: /var/run/mysql
    mysql_pre_dir: /usr/share/mysql
    mysql_root_password: password
  roles:
    - mysql
```

| var                 | value                             |
| ------------------- | --------------------------------- |
| mysql_version       | mysql版本                         |
| mysql_root_dir      | mysql根目录                       |
| mysql_config_file   | mysql配置文件目录                 |
| mysql_log_dir       | mysql日志目录                     |
| mysql_run_dir       | mysql sock和pid文件存放目录       |
| mysql_pre_dir       | mysql服务启动前预先执行的脚本目录 |
| mysql_data_dir      | mysql数据目录                     |
| mysql_root_password | mysql root密码                    |

## 补充

若想安装mysql 8.0版本，修改mysql_version为所要安装的版本，修改`vars/main.yml`的mysql_url为 8.0 下载链接

```sh
mysql_url: https://cdn.mysql.com//Downloads/MySQL-8.0/{{ mysql_version }}.tar.xz
```
