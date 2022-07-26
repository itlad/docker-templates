# 日志收集（ElasticSearch、Filebeat和Kibana）

创建data目录并赋予读写和执行的权限：

```shell
mkdir ./data
chmod a+rwx ./data
```

启用密码
`bin/elasticsearch-setup-passwords interactive`

Filebeat配置指南：<https://www.elastic.co/guide/en/beats/filebeat/current/configuring-howto-filebeat.html>
Elasticsearch Ingest：<https://www.elastic.co/guide/en/elasticsearch/reference/7.13/ingest.html>
Grok Debugger：<http://grokdebug.herokuapp.com/>
