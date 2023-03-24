# Ansible Role:php

安装php

## 系统要求

- Ubuntu
- Centos

## 用法

```sh
  vars:
    php_version: php-7.2.34
    php_root_dir: /usr/local/php/72
    php_service: php72-fpm
    php_sock_file: "/dev/shm/php72-fpm.sock"
    php_error_log_file: "{{ php_log_dir }}/php72-fpm.log"
    php_slow_log_file: "{{ php_log_dir }}/php72-slow.log"
    redis_version: redis-5.3.7
    imagick_version: imagick-3.5.1
  roles:
    - php
```

| var                | value             |
| ------------------ | ----------------- |
| php_version        | php版本           |
| php_root_dir       | php根目录         |
| php_service        | systemctl 文件    |
| php_sock_file      | php sock文件      |
| php_error_log_file | php错误日志文件   |
| php_slow_log_file  | php慢执行日志文件 |

## 补充

更换版本修改php_version
