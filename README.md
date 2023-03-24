# Ansible roles

###### 通过roles安装docker、nginx、php、MySQL

###### 在inventory/os中修改对应服务器所属os版本

###### 在playbooks中调用需要安装服务对应的role以及修改对应参数

## example

```yml
- name: Install nginx
  hosts: c7-web
  vars:
    nginx_version: nginx-1.21.0
    nginx_root_dir: /usr/local/nginx
    nginx_log_dir: /data/logs/nginx
    nginx_pid_file: /var/run/nginx.pid
  roles:
    - nginx
```
