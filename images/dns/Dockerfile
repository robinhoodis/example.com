FROM examplecom/image:base

RUN yum -y install bind-utils bind && \
    yum clean all

ADD container-image-root /

RUN rndc-confgen -a -c /etc/rndc.key && \
    chown named:named /etc/rndc.key && \
    chmod 755 /entrypoint

VOLUME [ "/named" ]

ENTRYPOINT [ "/entrypoint"]
CMD [ "/usr/sbin/named" ]

