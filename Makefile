all:
	@echo "make build - build docker image"
	@echo "make up - bring up vagrant box"
	@echo "make destroy - destroy vagrant box"

build:
	docker build -t dev-ubuntu --no-cache=true .

destroy:
	vagrant destroy -f
