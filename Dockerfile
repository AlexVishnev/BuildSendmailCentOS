FROM scratch
MAINTAINER https://github.com/CentOS/sig-cloud-instance-images
#ADD centos-6-docker.tar.xz /

LABEL org.label-schema.schema-version="1.0" \
    org.label-schema.name="CentOS Base Image" \
    org.label-schema.vendor="CentOS" \
    org.label-schema.license="GPLv2" \
    org.label-schema.build-date="20181006"

RUN yum groupinstall -y Development tools && yum install -y db4-devel rsyslog valgrind curl libssl-dev ibsasl2-dev mysql-devel valgrind gdb


COPY docker-entry.sh /usr/local/bin/ 
RUN ln -sf usr/local/bin/docker-entry.sh /

ENTRYPOINT ["./docker-entrypoint.sh"]
