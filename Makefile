

.PHONY: build
build:
	docker build -t neo-node:dev .

.PHONY: download-seed

download-seed:
	install -d $(shell pwd)/cache
	curl http://static.neo.org/client/chain.acc.zip > "$(shell pwd)/cache/chain.acc.zip"

.PHONY: run-mount
run-mount:
	docker run -it --rm \
		--mount type=bind,source="$(shell pwd)/cache",target=/opt/cache \
		--mount type=bind,source="$(shell pwd)/chain",target=/chain \
		neo-node:dev \
		bash