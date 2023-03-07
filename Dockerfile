FROM diodonfrost/ubuntu-20.04-ansible

RUN apt update && apt install -y iputils-ping rsync grsync vim

# install nvm 
RUN apt install -y curl \
    && curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash \
    && . ~/.bashrc \
    && nvm install 14.16 \
    && nvm alias default 14.16

RUN apt install -y git zip unzip vim

WORKDIR ./ansible


