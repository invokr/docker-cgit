FROM centos:7
MAINTAINER Robin Dietrich <me@invokr.org>

# Htaccess credentials
ENV HTTP_AUTH_USER="", HTTP_AUTH_PASSWORD=""

# Upgrade base system
RUN yum update -y && yum upgrade -y && yum install gcc git httpd highlight make nginx openssl-devel -y && yum clean all

# Install cgit
RUN git clone git://git.zx2c4.com/cgit && cd cgit && git submodule init && git submodule update \
 && make NO_LUA=1 && make install && cd .. && rm -Rf cgit

# Configure
ADD config/httpd.conf /etc/httpd/conf/httpd.conf
ADD config/cgit.conf /etc/cgitrc

ADD scripts /opt

# Install init
ADD https://github.com/Yelp/dumb-init/releases/download/v1.0.0/dumb-init_1.0.0_amd64 /usr/local/bin/dumb-init
RUN chmod +x /usr/local/bin/dumb-init

# Start
EXPOSE 80
CMD ["/usr/local/bin/dumb-init", "/opt/init.sh"]
