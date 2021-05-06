
FROM node:14.15 as spfx-debug
RUN npm install gulp --global
RUN npm install yo --global
RUN npm install @microsoft/generator-sharepoint --global --unsafe-perm=true --allow-root
WORKDIR /npm
# Installing node_modules into /npm folder inside the container and then making symlink to it from /app/spfx
# This helps avoid symlink issues with mounted volume on windows and makes npm install faster
COPY ./spfx/package.json ./
RUN npm install --ignore-optional
WORKDIR /app/spfx
