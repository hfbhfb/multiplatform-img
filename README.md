


```sh

# 登录SWR 【从控制台页面获取】
docker login xxx

# 配置镜像相关信息
Regin=swr.cn-north-4.myhuaweicloud.com
Org=hfbbg4
AppName=my-go-app
Version=v0.1

docker build --build-arg TARGETARCH=amd64 --platform linux/amd64 -t ${Regin}/${Org}/${AppName}:amd64-${Version} --no-cache .
docker build --build-arg TARGETARCH=arm64 --platform linux/arm64 -t ${Regin}/${Org}/${AppName}:arm64-${Version} --no-cache .

docker push ${Regin}/${Org}/${AppName}:amd64-${Version}
docker push ${Regin}/${Org}/${AppName}:arm64-${Version}
docker manifest create ${Regin}/${Org}/${AppName}:${Version} ${Regin}/${Org}/${AppName}:amd64-${Version} ${Regin}/${Org}/${AppName}:arm64-${Version}

docker manifest inspect ${Regin}/${Org}/${AppName}:${Version}
docker manifest push ${Regin}/${Org}/${AppName}:${Version}


```
