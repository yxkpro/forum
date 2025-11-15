#!/bin/bash
set -e
envsubst < /usr/src/app/config.json.template > /usr/src/app/config.json
echo "Generated config.json with environment variables"
exec ./nodebb start