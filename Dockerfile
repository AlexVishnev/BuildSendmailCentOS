from centos:6

RUN yum groupinstall -y Development tools && yum install -y db4-devel rsyslog valgrind curl libssl-dev ibsasl2-dev mysql-devel valgrind gdb


COPY docker-entry.sh /usr/local/bin/ 
RUN ln -sf usr/local/bin/docker-entry.sh /

ENTRYPOINT ["./docker-entrypoint.sh"]
