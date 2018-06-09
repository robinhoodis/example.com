FROM examplecom/image:base

RUN yum install -y \
	vsftpd \
	db4-utils \
	db4 && yum clean all

RUN useradd -d /home/admin -g root -ms /bin/bash admin
RUN echo admin:admin | chpasswd

RUN mkdir -p /var/log/vsftpd/
RUN chmod 777 /var/log/vsftpd
RUN mkdir -p /var/run/vsftpd/empty
COPY ftpd.conf /etc/vsftpd/vsftpd.conf
COPY ftpd.sh /
RUN chmod +x /ftpd.sh
CMD ["/ftpd.sh"]

