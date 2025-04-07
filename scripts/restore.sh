#!/bin/bash
docker cp ./dump mongo1:/data/restore
docker exec mongo1 mongorestore \
  --username admin \
  --password supersecret \
  --authenticationDatabase admin \
  /data/restore
