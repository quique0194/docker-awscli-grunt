# Pull base image.
FROM alpine
MAINTAINER Jose Carrillo <quique0194@gmail.com>

# Core dependencies
RUN apk add python3 npm && python3 -m pip install --upgrade awscli

# Install Grunt
RUN npm install grunt \
 && npm install grunt-env \
 && npm install grunt-contrib-concat \
 && npm install grunt-contrib-copy \
 && npm install grunt-contrib-cssmin \
 && npm install grunt-contrib-htmlmin \
 && npm install grunt-contrib-uglify \
 && npm install grunt-contrib-uglify-es \
 && npm install grunt-contrib-watch \
 && npm install -g grunt-cli

# Define working directory.
# WORKDIR /data
