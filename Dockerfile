FROM centos:6

RUN yum groupinstall -y Development tools && yum install -y db4-devel rsyslog valgrind curl libssl-dev ibsasl2-dev


ENTRYPOINT [ "/bin/bash" ]
