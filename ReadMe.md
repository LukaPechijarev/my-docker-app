ReadME Project

- first we need to clone the new repo in my case git@github.com:LukaPechijarev/my-docker-app.git\

- cd my-docker-app

- We run npm init -y, with this command we create package.json

- npm install express in with this comman we are downloading express and adding to my project's dependencies in the package.json

- inside the package.json in the scripts part we include start: node index.js 

- we create simple application using js, and named it index.js, inside we write the html that we want to deploy on a certain port, in my case the port is 4500

- we create Dockerfile for buiding a docker image for node.js app, inside we have WORKDIR /user/src/app which sets the working directory inside the docker container
to the path. and we have COPY package*.json ./ that copies package.json and package-lock.json files from my local machine to /usr/src/app

- CMD [ "npm", "start" ] , this us the default command to run when the container startts, in this case starts te node.js app as it is defined on package.json.

- To build an image we use docker build -t my-nodejs-app .

- and to run the docker containter docker run -d -p 4500:4500 --name my-nodejs-app my-nodejs-app

- i use the script.sh to pull the docker image, stop it, remove it, and than start a new one

- we use docker-compose.yml to specify the port

- docker-compose up --build

- docker-compose down

- chmod +x deploy.sh, to make it executable

- inside the ci-cd.yml file we define the branch that we like to work with, in the build section, we check the code. set up node.js, install dependencies, build and 
tag a docker image, and log in to docker to push the image.

- in the deploty part, we are waiting for the build to finish first, checking the code, pull the docker image from dockerhub, stops and removes any existing container,
deploys a new container with the last image, and wait for the application to start to run the test if its running. 

- After we push somethin on the branch named develop we automaticly are craeting github action that build and deploy , and on the dockerhub we have the new updated
image

- for the script to run correctly inside the github repo in the part secrets i added my dockerusername and docker password as secrets

