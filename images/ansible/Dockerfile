FROM examplecom/image:base

RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install PyYAML python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools git python-pip && \
    yum clean all

RUN mkdir /etc/ansible/
RUN echo '[local]\nlocalhost\n' > /etc/ansible/hosts
RUN mkdir /opt/ansible/
RUN git clone http://github.com/ansible/ansible.git /opt/ansible/ansible
WORKDIR /opt/ansible/ansible
RUN git submodule update --init

RUN pip install --upgrade git+https://github.com/ansible/ansible.git
RUN pip install --upgrade f5-sdk bigsuds netaddr objectpath isoparser lxml deepdiff
RUN pip install --upgrade git+https://github.com/F5Networks/f5-common-python.git

ENV PATH /opt/ansible/ansible/bin:/bin:/usr/bin:/sbin:/usr/sbin
ENV PYTHONPATH /opt/ansible/ansible/lib
ENV ANSIBLE_LIBRARY /opt/ansible/ansible/library

#COPY / /opt/ansible/
#WORKDIR /opt/ansible/

RUN useradd -m -u 1000 -U user
RUN chown -R user /opt/ansible/

USER user:user
WORKDIR /home/user/

CMD /bin/bash
