#!/bin/bash
#

docker pull f5devcentral/f5-super-netops-container:jenkins
docker build -t examplecom/jenkins -f Dockerfile .
docker run -p 8080:80 -p 2222:22 -p 10000:8080 --rm -it -e SNOPS_GH_BRANCH=master f5devcentral/f5-super-netops-container:jenkins
