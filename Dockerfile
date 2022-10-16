FROM worthy98/centos-npm-base:1
COPY . ./app/
WORKDIR app
RUN npm i
CMD npm start
EXPOSE 8080