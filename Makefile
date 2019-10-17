all: create-volume create-cronjob create-roles create-deployment create-service

create-roles:
	kubectl apply \
		-f cluster-role.yaml
	kubectl apply \
		-f cluster-role-binding.yaml

create-volume:
	kubectl apply \
		-f persistent-volume-claim.yaml

create-cronjob:
	kubectl apply \
		-f k8s-skinny-wms-dwd-data-cronjob.yaml

create-deployment:
	kubectl apply \
		-f skinnywms-demo-deployment.yaml

create-service:
	kubectl apply \
		-f skinnywms-demo-service.yaml