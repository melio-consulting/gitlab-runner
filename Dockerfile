FROM gitlab/gitlab-runner:latest

ARG DOCKER_VERSION=20.10.8
ADD https://download.docker.com/linux/static/stable/x86_64/docker-"${DOCKER_VERSION}".tgz /tmp/docker.tgz
RUN tar --extract --file /tmp/docker.tgz --strip-components 1 --directory /usr/local/bin/

RUN docker --version

ARG HELM_VERSION=3.6.3
ADD https://get.helm.sh/helm-v"${HELM_VERSION}"-linux-amd64.tar.gz /tmp/helm.tgz
RUN tar --extract --file /tmp/helm.tgz --strip-components 1 --directory /usr/local/bin/

RUN helm version
