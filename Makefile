PROJECT=gmatheu
APP=thingsboard-gateway

build:
	docker build --pull -t ${PROJECT}/${APP}:latest .

push: build
	docker push ${PROJECT}/${APP}:latest
