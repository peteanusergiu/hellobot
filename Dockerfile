FROM node:4-onbuild
# Create app directory
COPY package.json /app/
RUN npm install
COPY . /app/
#ENV JAVA_OPTS="-agentlib:jdwp=transport=dt_socket,address=1043,suspend=n,server=y"
EXPOSE 5000
CMD [ "npm", "start" ]