#!/bin/bash
#

# docker login --username=$DOCKER_USER --password=$DOCKER_PASS $DOCKER_HOST
docker login --username=examplecom --password=4F6-Mqf-4WQ-VrV
#docker network create -d macvlan --subnet=10.1.40.0/24 --gateway=10.1.40.1 -o parent=ens5 site2
#docker network create -d macvlan --subnet=10.1.30.0/24 --gateway=10.1.30.1 -o parent=ens4 site1
#docker network create -d macvlan --subnet=10.1.10.0/24 --gateway=10.1.10.1 -o parent=eth0 mgmt
#docker volume create HOME
#docker volume create FTPLOGS
#docker volume create HTTPLOGS
#docker volume create HTTPD_DATA_PATH

docker build -t examplecom/image:base -f Dockerfile .
#docker push examplecom/image:base

for dir in *; do
    if test -d "$dir"; then
        cd $dir
        docker build -t examplecom/image:$dir -f Dockerfile .
#        docker push examplecom/image:$dir
    fi
done


DOMAIN="example.com"
declare -A SITES=( [site1]="10.1.30" [site2]="10.1.40" ) 
declare -A SERVICES=( [ftp]='--mount source=HOME,target=/home --mount source=FTPLOGS,target=/var/log/vsftpd' [http]='--mount source=HOME,target=/home --mount source=HTTPD_DATA_PATH,target=/var/www --mount source=HTTPLOGS,target=/var/log/httpd' [dns]='--volume /srv/docker/bind9:/named' )

#docker run -d --name ansible --hostname ansible.example.com --net mgmt --ip 10.1.10.61 --rm examplecom/image:ansible

docker run --rm -it --name ansible --hostname ansible.example.com --volume /home/user/example.com/images/ansible:/home/user -v /home/user/.ssh/id_rsa:/home/user/.ssh/id_rsa -v /home/user/.ssh/id_rsa.pub:/home/user/.ssh/id_rsa.pub examplecom/image:ansible "$@"

exit

i=7
for SERVICENAME in "${!SERVICES[@]}"
  do
    for SITENAME in ${!SITES[@]}; do
      for CONTAINER in 1 2 3; do
        docker stop ${SITENAME}.${SERVICENAME}${CONTAINER} || true
        echo "docker run -d --name ${SITENAME}.${SERVICENAME}${CONTAINER} --hostname ${SITENAME}.${SERVICENAME}${CONTAINER}.${DOMAIN} --net ${SITENAME} --ip ${SITES[$SITENAME]}.${i}${CONTAINER} --rm ${SERVICES[$SERVICENAME]} examplecom/image:${SERVICENAME}"
        docker run -d --name ${SITENAME}.${SERVICENAME}${CONTAINER}  --hostname ${SITENAME}.${SERVICENAME}${CONTAINER}.${DOMAIN} --net ${SITENAME} --ip ${SITES[$SITENAME]}.${i}${CONTAINER} --rm ${SERVICES[$SERVICENAME]} examplecom/image:${SERVICENAME}
     done
   done
  ((i++))
done
exit

#docker system prune
