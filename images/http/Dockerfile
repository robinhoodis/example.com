FROM examplecom/image:base

RUN yum -y --setopt=tsflags=nodocs install httpd php php-gd php-ldap php-xml curl mod_ssl && \
    yum clean all

ADD httpd.sh /httpd.sh
RUN chmod -v +x /httpd.sh

CMD ["/httpd.sh"]
