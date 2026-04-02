FROM nextcloud:latest

# 安装 vim
RUN apt-get update && apt-get install -y vim \
    && rm -rf /var/lib/apt/lists/*

# 设置权限（运行时通过 -v 挂载代码到此目录）
RUN chown -R www-data:www-data /var/www/html
