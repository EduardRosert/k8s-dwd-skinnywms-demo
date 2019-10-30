all: create-volume create-roles create-cronjob create-deployment create-service

simple-demo:
	kubectl apply \
		-f skinnywms-with-dwd-data.yaml

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

cleanup:
	kubectl delete \
		deployment -lapp=skinnywms-demo
	kubectl delete \
		-f k8s-skinny-wms-dwd-data-cronjob.yaml
	kubectl delete \
		-f cluster-role.yaml
	kubectl delete \
		-f cluster-role-binding.yaml
	kubectl delete \
		-f persistent-volume-claim.yaml

force-cleanup:
	kubectl delete \
		pods -lapp=skinnywms-demo --grace-period=0 --force

cleanup-service:
	kubectl delete \
		-f skinnywms-demo-service.yaml