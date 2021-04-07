all: help

help:
	@echo "run : run nginx with local static files mounted"
	@echo "rm  : terminate and delete local nginx"

run:
	docker run --rm --name ipam-ui -p9000:80 -d -v $(shell pwd)/static:/usr/share/nginx/html nginx

rm:
	docker rm -f ipam-ui
