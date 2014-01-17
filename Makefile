
build:
	docker build -t deis/server .

run:
	docker run -rm -p $${PORT:-8000}:$${PORT:-8000} -e ETCD=$${ETCD:-127.0.0.1:4001} -name deis-server deis/server ; exit 0

shell:
	docker run -t -i -rm -e ETCD=$${ETCD:-127.0.0.1:4001} deis/server /bin/bash

clean:
	-docker rmi deis/server