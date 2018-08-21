#!/bin/ash
# * Author        : WangLX
# * Email         : 15201376500@163.com
# * Last modified : 2018-08-20
# * Description   : Nginx webproc admin

WEB_USER=${WEB_USER:-admin}
WEB_PASS=${WEB_PASS:-admin}
WEB_PORT=${WEB_PORT:-19090}

echo  webproc -p ${WEB_PORT} --user ${WEB_USER} --pass ${WEB_PASS} 
/usr/local/bin/webproc -p ${WEB_PORT} --user ${WEB_USER} --pass ${WEB_PASS} --config /usr/local/openresty/nginx/conf/nginx.conf -- /usr/local/openresty/nginx/sbin/nginx -g 'daemon off;'