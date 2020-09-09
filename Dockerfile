FROM node:13.1.0

# Create app directory
RUN mkdir -p /usr/opt/service
WORKDIR /usr/opt/service

RUN npm install -g bower grunt-cli

# Bundle app source
COPY package.json .
COPY package-lock.json .
COPY css css
COPY js js
COPY lib lib
COPY plugin plugin
COPY bower.json .
COPY gruntfile.js .
COPY index.html .

RUN npm install

EXPOSE 8000
CMD ["ls"]
CMD ["npm", "start"]
