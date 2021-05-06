
FROM node:14.15 as spfx-debug
RUN npm install gulp --global
RUN npm install yo --global
RUN npm install @microsoft/generator-sharepoint --global --unsafe-perm=true --allow-root
WORKDIR /npm
# This is to avoid problems with symlinks on windows
RUN apt-get update && apt-get -y install rsync
COPY ./spfx/package.json ./
RUN npm install --ignore-optional
WORKDIR /app/spfx