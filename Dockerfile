FROM centos:6

RUN yum groupinstall -y Development tools && yum install -y db4-devel rsyslog valgrind curl


ENTRYPOINT [ "/bin/bash" ]
