#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -o StrictHostKeyChecking=no /tmp/.auth root@113.164.246.20:/tmp/.auth
scp -o StrictHostKeyChecking=no ./pipeline6/jenkins/deploy/publish root@113.164.246.20:/tmp/publish
ssh -o StrictHostKeyChecking=no root@113.164.246.20 "bash /tmp/publish"
