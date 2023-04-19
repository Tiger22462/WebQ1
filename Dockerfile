#Base image 
From node:19-alpine 

#Copy <SRC> -> <DST> in container
# /__/ mean create folder if it doesn't exist

WORKDIR /app
#Copy whole directory
COPY . .
#set working directory like cd



#Execute any command
#NPM reads the package.json file in the root directory of your project and installs all the dependencies listed in the dependencies
RUN npm install

#Execute command when start
CMD ["node","index.js"]