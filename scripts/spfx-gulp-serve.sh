#!/bin/sh

docker-compose exec "spfx-debug" bash -c "ln -sf -T /npm/node_modules /app/spfx/node_modules && mkdir -p /app/spfx/npm && ln -sf -T /npm/node_modules /app/spfx/npm/node_modules && gulp serve --nobrowser"
