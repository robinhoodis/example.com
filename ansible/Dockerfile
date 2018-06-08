wget http://springdale.math.ias.edu/data/puias/unsupported/7/x86_64/dnf-conf-0.6.4-2.sdl7.noarch.rpm
wget http://springdale.math.ias.edu/data/puias/unsupported/7/x86_64//dnf-0.6.4-2.sdl7.noarch.rpm
wget http://springdale.math.ias.edu/data/puias/unsupported/7/x86_64/python-dnf-0.6.4-2.sdl7.noarch.rpm
yum install python-dnf-0.6.4-2.sdl7.noarch.rpm  dnf-0.6.4-2.sdl7.noarch.rpm dnf-conf-0.6.4-2.sdl7.noarch.rpm


FROM centos:7
MAINTAINER The CentOS Project <cloud-ops@centos.org>

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install python-dev python-pip vim git-core wget curl libffi-dev libssl-dev libxml2-dev libxslt1-dev libjpeg8-dev zlib1g-dev && 
    yum clean all

COPY . /opt/f5ansible

WORKDIR /opt/f5ansible
RUN pip install -r dev-requirements.txt

CMD /bin/bash
