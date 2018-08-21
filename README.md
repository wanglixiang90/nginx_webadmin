# nginx_webadmin
nginx webadmin 是通过web页面管理nginx(openresty)配置文件的守护进程项目

# 编译docker镜像
docker build -t nginx_webadmin .

# dockerhub 拉取镜像
docker pull webnginx/nginx_webadmin

# 启动docker容器
docker run -d --net=host nginx_webadmin

访问 http://<public_IP>:19090/ ;默认端口号19090，默认账号密码admin/admin

# 环境变量
  WEB_USER：http认证用户名 
  
  WEB_PASS：http认证密码 
  
  WEB_PORT：http监听端口号 

# 启动自定义docker容器
docker run -d --net=host -e WEB_PORT=<you_port> -e WEB_USER=<you_username> -e WEB_PASS=<you_password> nginx_webadmin
