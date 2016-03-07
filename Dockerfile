FROM drupal
RUN apt-get update && apt-get install -y git ssh-client ca-certificates
ENV HOME /root
# Note that this means you need your private key in the build directory. DO NOT
# COMMIT IT. DO NOT.
ADD ssh/ /root/.ssh/
RUN chmod 600 /root/.ssh/*
RUN ssh-keyscan github.com > /root/.ssh/known_hosts
WORKDIR /root/
RUN cat /root/.ssh/id_rsa.pub
RUN eval `ssh-agent -s` && ssh-add /root/.ssh/id_rsa
RUN git clone git@github.com:Cornell-RPAL/lab-site.git
WORKDIR lab-site
CMD /bin/zsh
