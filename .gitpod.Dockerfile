FROM gitpod/workspace-full

USER root

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
 RUN sudo apt-get -q update && \
 sudo apt-get install -yq bastet && \
 sudo rm -rf /var/lib/apt/lists/*
 RUN curl -ssl https://get.docker.com | sh
 RUN sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
