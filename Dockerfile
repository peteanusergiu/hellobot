FROM node:4-onbuild
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app
#ENV JAVA_OPTS="-agentlib:jdwp=transport=dt_socket,address=1043,suspend=n,server=y"
EXPOSE 5000
CMD [ "npm", "start" ]