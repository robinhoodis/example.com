FROM examplecom/image:base

RUN yum -y install epel-release && \
    yum -y install hawkey wget python2-libcomps libcomps PyYAML python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools git python-pip libreport-filesystem && \
    yum clean all

#RUN mkdir /etc/ansible/
#RUN echo '[local]\nlocalhost\n' > /etc/ansible/hosts
#RUN rm -rf /opt/ansible/
RUN mkdir /opt/ansible/
RUN git clone http://github.com/ansible/ansible.git /opt/ansible
WORKDIR /opt/ansible
RUN git submodule update --init

RUN pip install setuptools==1.4.1
RUN pip install --upgrade pip chardet requests docopt cryptography f5-sdk bigsuds netaddr objectpath isoparser lxml deepdiff git+https://github.com/F5Networks/f5-common-python.git

#RUN pip install git+https://github.com/ansible/ansible.git@devel
#RUN pip install --upgrade chardet
#RUN pip install requests
#RUN pip install docopt
#RUN pip install cryptography
#RUN pip install --upgrade f5-sdk bigsuds netaddr objectpath isoparser lxml deepdiff
#RUN pip install --upgrade git+https://github.com/F5Networks/f5-common-python.git

#RUN wget http://springdale.math.ias.edu/data/puias/unsupported/7/x86_64/dnf-conf-0.6.4-2.sdl7.noarch.rpm
#RUN wget http://springdale.math.ias.edu/data/puias/unsupported/7/x86_64/python-dnf-0.6.4-2.sdl7.noarch.rpm
#RUN wget http://springdale.math.ias.edu/data/puias/unsupported/7/x86_64/dnf-0.6.4-2.sdl7.noarch.rpm
#RUN yum -y install dnf-conf-0.6.4-2.sdl7.noarch.rpm python-dnf-0.6.4-2.sdl7.noarch.rpm dnf-0.6.4-2.sdl7.noarch.rpm

ENV PATH /opt/ansible/bin:/bin:/usr/bin:/sbin:/usr/sbin
ENV PYTHONPATH /opt/ansible/lib
ENV ANSIBLE_LIBRARY /opt/ansible/library

RUN useradd -m -u 1000 -U user
RUN chown -R user /opt/ansible/

USER user:user
WORKDIR /home/user/

CMD /bin/bash
