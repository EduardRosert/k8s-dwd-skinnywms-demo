all: create-deployment create-service

create-deployment:
	kubectl apply \
		-f skinnywms-demo-deployment.yaml

create-service:
	kubectl apply \
		-f skinnywms-demo-service.yaml