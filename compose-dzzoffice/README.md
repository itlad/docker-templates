# dzzoffice

DzzOffice是一套开源办公套件，适用于企业、团队搭建自己的 类似“Google企业应用套件”、“微软Office365”的企业协同办公平台

## 使用

**构建镜像：**

```shell
export DZZOFFICE_VERSION=2.02
docker build -t dzzoffice:${DZZOFFICE_VERSION} .
```

**使用命令运行镜像：**

```shell
docker run --name dzzoffice -p 8080:80 -v /opt/dzzoffice/data:/var/www/html dzzoffice:${DZZOFFICE_VERSION}
```

**使用`docker-compose`运行镜像：**

```shell
cd compose/
docker-compose up -d
```

访问 `http://localhost:8080/` 按照指引进行按照即可。
