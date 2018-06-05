#!/bin/bash
#

# docker login --username=$DOCKER_USER --password=$DOCKER_PASS $DOCKER_HOST
#docker login --username=examplecom --password=4F6-Mqf-4WQ-VrV
#docker network create -d macvlan --subnet=10.1.40.0/24 --gateway=10.1.40.1 -o parent=ens5 site2
#docker network create -d macvlan --subnet=10.1.40.0/24 --gateway=10.1.30.1 -o parent=ens4 site1
#docker volume create HOME
#docker volume create FTPLOGS
#docker volume create HTTPLOGS
#docker volume create HTTPD_DATA_PATH

DOMAIN="example.com"
declare -a SITES
declare -a SERVICES
SITES=( [site1]="10.1.30" [site2]="10.1.40" ) 
SERVICES=( [ftp]='--mount source=HOME,target=/home --mount source=FTPLOGS,target=/var/log/vsftpd' [http]='--mount source=HOME,target=/home --mount source=HTTPD_DATA_PATH,target=/var/www --mount source=HTTPLOGS,target=/var/log/httpd' [dns]='--volume /srv/docker/bind9:/named' )

i=7
for SERVICENAME in "${!SERVICES[@]}"
  do
    echo "docker build -t examplecom/${SERVICENAME} -f Dockerfile.${SERVICENAME} ."
exit
    docker build -t examplecom/${SERVICENAME} -f Dockerfile.${SERVICENAME} .
    docker push examplecom/${SERVICENAME}
    for SITENAME in ${!SITES[@]}; do
      for CONTAINER in 1 2 3; do
        docker stop ${SITENAME}.${SERVICENAME}${CONTAINER}
        echo "docker run -d --name ${SITENAME}.${SERVICENAME}${CONTAINER} --hostname ${SITENAME}.${SERVICENAME}${CONTAINER}.${DOMAIN} --net ${SITENAME} --ip ${SITES[$SITENAME]}.${i}${CONTAINER} --rm ${SERVICES[$SERVICENAME]} examplecom/${SERVICENAME}"
        docker run -d --name ${SITENAME}.${SERVICENAME}${CONTAINER}  --hostname ${SITENAME}.${SERVICENAME}${CONTAINER}.${DOMAIN} --net ${SITENAME} --ip ${SITES[$SITENAME]}.${i}${CONTAINER} --rm ${SERVICES[$SERVICENAME]} examplecom/${SERVICENAME}
     done
   done
  ((i++))
done
exit

