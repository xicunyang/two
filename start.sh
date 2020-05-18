# 拉取代码
git pull

# 安装依赖和打包
yarn --registry=https://registry.npm.taobao.org/ && yarn build

# 删除容器
docker rm -f file2png &> /dev/null

#启动容器
docker run -d --restart=on-failure:5\
    -p 80:80 \
    -v $PWD/dist:/usr/share/nginx/html \
    -v $PWD/default.conf:/etc/nginx/conf.d/default.conf \
    -v $PWD/iframe/office2png.html:/usr/share/nginx/html/office2png.html \
    --name file2png nginx


