namespace = 28solutions
image = tools-ui

version = $(shell yq -r .info.version openapi.yaml)
full_version = $(version)-r$(REVISION)

.PHONY: build push check-version

build: check-version
	docker build . \
		-t $(namespace)/$(image):$(full_version) \
		-t $(namespace)/$(image):$(version) \
		-t $(namespace)/$(image):latest

push: build
	docker push $(namespace)/$(image):$(full_version)
	docker push $(namespace)/$(image):$(version)
	docker push $(namespace)/$(image):latest

check-version:
ifndef REVISION
	$(error REVISION is undefined)
endif
