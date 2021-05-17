#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

#ssh root@113.164.246.20

scp /tmp/.auth root@113.164.246.20:/tmp/.auth
scp ./pipeline6/jenkins/deploy/publish root@113.164.246.20:/tmp/publish
ssh root@113.164.246.20 "bash /tmp/publish"
