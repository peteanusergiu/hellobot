FROM node:4-onbuild
COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app
#ENV JAVA_OPTS="-agentlib:jdwp=transport=dt_socket,address=1043,suspend=n,server=y"
EXPOSE 5000
CMD [ "npm", "start" ]