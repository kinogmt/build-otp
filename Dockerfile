FROM quay.io/cloudian/cqc:kerl19.2.centos7
ENV INST=yum
# --- worker --------------------
RUN (useradd -s /bin/bash worker; \
     echo 'worker:newpass' | chpasswd; \
     mkdir -p /home/worker; \
     mkdir -p /etc/sudoers.d; \
     echo "worker ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/sudoers)

# --- install -----------------------
RUN ${INST} install -y sudo git gcc-c++ asciidoc selinux-policy-devel findutils rpcbind

ADD startservice.sh /usr/local/startservice.sh

CMD tail -f /var/log/${INST}.log

