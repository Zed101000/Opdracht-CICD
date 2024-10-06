FROM node:22-alpine
WORKDIR /app
COPY ./package.json ./package.json
COPY ./yarn.lock ./yarn.lock
RUN yarn install --frozen-lockfile
Copy . .
CMD ["node", "src/index.js"]
EXPOSE 3000 