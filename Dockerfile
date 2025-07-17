FROM node:20

WORKDIR /app

COPY package*.json ./

RUN npm install @baidumap/mcp-server-baidu-map

COPY . .

EXPOSE 3000

CMD ["npx", "@baidumap/mcp-server-baidu-map"]
