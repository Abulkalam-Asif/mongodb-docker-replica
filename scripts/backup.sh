#!/bin/bash
docker exec mongo1 mongodump \
  --username admin \
  --password supersecret \
  --authenticationDatabase admin \
  --out /data/backup

docker cp mongo1:/data/backup ./dump
