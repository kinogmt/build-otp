FROM quay.io/cloudian/cqc:kerl19.2.fc24
ENV INST=dnf
# --- worker --------------------
RUN (useradd -s /bin/bash worker; \
     echo 'worker:newpass' | chpasswd; \
     mkdir -p /home/worker; \
     mkdir -p /etc/sudoers.d; \
     echo "worker ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/sudoers)

# --- install -----------------------
RUN ${INST} install -y sudo git gcc-c++ asciidoc selinux-policy-devel
CMD tail -f /var/log/${INST}.log

