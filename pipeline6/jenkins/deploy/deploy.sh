#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp /tmp/.auth root@10.127.17.130:/tmp/.auth
scp ./pipeline6/jenkins/deploy/publish root@10.127.17.130:/tmp/publish
ssh root@10.127.17.130 "bash /tmp/publish"
