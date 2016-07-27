#!/usr/bin/env bash
#进入文件所在目录
current_dir=`echo $(pwd)/$(dirname $0)`;
cd $current_dir;
current_dir=$(pwd)
echo $current_dir;
docker run \
--name php-fpm \
-p 9001:9000 \
-d php:fpm

