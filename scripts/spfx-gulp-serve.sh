#!/bin/sh

docker-compose exec "spfx-debug" bash -c "ln -sf -T /npm/node_modules /app/spfx/node_modules && gulp serve --nobrowser"
