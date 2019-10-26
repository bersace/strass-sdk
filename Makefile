NAME="bersace/strass-sdk"

build:
	docker build --tag $(NAME) .

clean:
	docker images --quiet $(NAME) | xargs --no-run-if-empty --verbose docker rmi -f

push:
	docker push $(NAME)

test:
	docker run --rm -it $(NAME) /bin/bash
