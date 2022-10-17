FROM worthy98/centos-npm-base:1
COPY . ./app/
WORKDIR app
RUN npm i
RUN npm build
CMD npm start
EXPOSE 8080
