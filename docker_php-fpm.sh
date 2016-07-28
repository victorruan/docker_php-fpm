#!/usr/bin/env bash
#进入文件所在目录
current_dir=`echo $(pwd)/$(dirname $0)`;
cd $current_dir;
current_dir=$(pwd)
echo $current_dir;
docker run \
--name php-fpm \
-v $current_dir/../nginx/www:/var/www/html \
-v $current_dir/conf:/usr/local/etc \
-d php:5.5-fpm

