# Ansible Role:nginx

安装nginx

## 系统要求

- Ubuntu
- Centos

## 用法

```sh
  vars:
    nginx_version: nginx-1.21.0
    nginx_root_dir: /usr/local/nginx
    nginx_log_dir: /data/logs/nginx
    nginx_pid_dir: /var/run/nginx
  roles:
    - nginx
```

| var                | value             |
| ------------------ | ----------------- |
| nginx_version      | nginx版本           |
| nginx_root_dir     | nginx根目录         |
| nginx_log_dir      | nginx日志目录    |
| nginx_pid_dir      | nginx pid文件目录      |

## 补充

更换版本修改nginx_version
