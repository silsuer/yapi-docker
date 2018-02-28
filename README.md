# yapi-docker
把yapi容器化，使其可以在docker中运行

## 编译

1. 首先把这个库克隆到本地

 `git clone https://github.com/silsuer/yapi-docker.git`

2. 准备编译

 `docker build yapi-docker/. -t silsuer/yapi`

 （silsuer/yapi是自定义的镜像名）

3. 编译成功

## 从DockerHub进行安装 

 `docker pull silsuer/yapi`

## 运行

1. 运行镜像

 `docker run -dit -p 27017:27017 -p 9090:9090 -p 3000:3000 silsuer/yapi`

2. 进入容器

  - 查看容器id
  
    `docker ps`
    
  - 进入容器
  
    `docker attach container-id`
    
3. 启动mongodb

 `service mongodb start`

4. 启动`yapi`安装程序

 `yapi server`

5. 根据提示在浏览器中输入`ip:9090`进行安装

6. 回到终端，执行`nohup node /my-yapi/vendors/server/app.js 2>&1 &` 在后台运行`yapi`

7. 执行`ctrl+p`+`ctrl+q` 退出容器即可
