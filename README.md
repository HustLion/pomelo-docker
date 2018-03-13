# Pomelo-docker

为 Pomelo 定制的 docker 容器。

# 使用

已经上传到 Docker hub，可以直接使用

```bash
docker run -i -t hustlion/pomelo /bin/bash
```

# 示例

使用 docker swarm 对官方的 hello world 示例进行部署：

pomelo 本身是支持负载均衡的，docker swarm 的主要作用也是负载均衡。所以部署 Hello world 可以直接在一个 image 里面做，将端口映射写在 Dockerfile 中，但是这样每修改一次端口需要重新构建一次 image。使用 swarm 则在 docker-compose.yml 中写好端口映射，可以动态更改，并且如果使用 pomelo 的负载均衡，就只开一个 container，如果使用 docker 的，就要给不同的部分比如 gate、connector、chat 分别开一类 service，相应的业务代码也做一些更改，但是这显得修改量太大。暂时示例一个 container 的。

要开放的端口有 gate 和 connector 的。chat不必开。


# 编译

```bash
docker build -t hustlion/pomelo .
```

