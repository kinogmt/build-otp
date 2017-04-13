FROM quay.io/cloudian/cqc:kerl19.2

CMD ["/usr/local/startservice.sh"]

# --- worker --------------------
RUN (useradd -s /bin/bash worker; \
     echo 'worker:newpass' | chpasswd; \
     mkdir -p /home/worker; \
     mkdir -p /etc/sudoers.d; \
     echo "worker ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/sudoers)

# --- install -----------------------
RUN yum install -y sudo git gcc-c++ asciidoc selinux-policy-devel

CMD tail -f /var/log/yum.log

