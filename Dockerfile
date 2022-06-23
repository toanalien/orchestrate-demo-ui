FROM node:14
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm i
COPY . .
RUN npm run env
CMD ["npm", "start"]