# Pull base image.
FROM alpine
MAINTAINER Jose Carrillo <quique0194@gmail.com>

# Core dependencies
RUN apk add python3
RUN python3 -m pip install --upgrade awscli
RUN apk add npm

# Install Grunt
RUN npm install -g grunt-cli
RUN npm install grunt
RUN npm install grunt-env
RUN npm install grunt-contrib-concat
RUN npm install grunt-contrib-copy
RUN npm install grunt-contrib-cssmin
RUN npm install grunt-contrib-htmlmin
RUN npm install grunt-contrib-uglify
RUN npm install grunt-contrib-uglify-es
RUN npm install grunt-contrib-watch

# Define working directory.
# WORKDIR /data

# Define default command.
CMD ["bash"]
