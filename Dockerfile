FROM chonla/jenkins-slave-nodejs-dind:16.4.0

WORKDIR /opt

RUN curl 'https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip' -o 'awscliv2.zip'
RUN unzip awscliv2.zip
RUN ./aws/install

RUN curl -s 'https://raw.githubusercontent.com/kubernetes-sigs/kustomize/kustomize/v4.4.0/hack/install_kustomize.sh' | bash
RUN ln -s /opt/kustomize /usr/local/bin/kustomize

RUN usermod -a -G docker jenkins