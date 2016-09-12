FROM node:argon
COPY package.json /app/
RUN npm install
COPY . /app
#ENV JAVA_OPTS="-agentlib:jdwp=transport=dt_socket,address=1043,suspend=n,server=y"
EXPOSE 8080
CMD [ "npm", "start" ]