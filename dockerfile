
FROM node:14.15 as spfx-debug
RUN npm install gulp --global
RUN npm install yo --global
RUN npm install @microsoft/generator-sharepoint --global --unsafe-perm=true --allow-root
# Next RUN is only required if plannyng to run yo @microsoft/sharepoint
# Some more folders may need chmod if getting permission denied error
RUN mkdir -p /root/.config/insight-nodejs && \
    chmod g+rwx /root /root/.config /root/.config/insight-nodejs
WORKDIR /npm
# Installing node_modules into /npm folder inside the container and then making symlink to it from /app/spfx
# This helps avoid symlink issues with mounted volume on windows and makes npm install faster
COPY ./spfx/package.json ./
RUN npm install --ignore-optional
WORKDIR /app/spfx
