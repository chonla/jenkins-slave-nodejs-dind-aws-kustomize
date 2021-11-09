build:
	docker build -t chonla/jenkins-slave-nodejs-dind-aws-kustomize:latest -t chonla/jenkins-slave-nodejs-dind-aws-kustomize:$(version) .

push:
	docker push chonla/jenkins-slave-nodejs-dind-aws-kustomize:$(version) \
	&& docker push chonla/jenkins-slave-nodejs-dind-aws-kustomize:latest