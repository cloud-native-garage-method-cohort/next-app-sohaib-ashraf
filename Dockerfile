FROM quay.io/ibmgaragecloud/node:lts-stretch
COPY . ./app
WORKDIR /app

# install dependencies
RUN npm install

# start app
RUN npm run build
EXPOSE 3000
CMD ["npm", "run", "start"]