#!/bin/bash
set -e

cd /opt

if [ ! -d "docker-05-04-hw" ]; then
    git clone https://github.com/Aleksandr-afk-22/docker-05-04-hw.git
else
    cd docker-05-04-hw
    git pull
fi

cd /opt/docker-05-04-hw

[ ! -f .env ] && { echo "❌ .env not found"; exit 1; }

docker compose down || true
docker compose up -d --build
