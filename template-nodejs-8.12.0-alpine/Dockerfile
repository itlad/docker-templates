FROM node:8.12.0-alpine

WORKDIR /opt/app
EXPOSE 80

# Bundle app source
ADD . /opt/app
RUN node -v && npm -v && npm install
# 使用cnpm安装依赖
# RUN npm install -g cnpm --registry=https://registry.npm.taobao.org && \
#     cnpm install

# 直接运行js启动程序
# CMD [ "node", "index.js" ]
# 通过npm运行程序
CMD [ "npm", "start" ]
