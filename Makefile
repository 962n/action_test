

docker:
	docker container run --rm -it \
	-v $(PWD)/src:/sample/src \
	--name ubu ubunjq:1.0 bin/bash