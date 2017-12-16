current_dir = $(shell pwd)


all:
	sudo docker run -v $(current_dir):/home/project --privileged -p 3000:4000 --rm -ti jesse/jekyll:latest

build:
	sudo docker build -t jesse/jekyll:latest .

rmi:
	docker rmi $(docker images -a | grep "^<none>" | awk '{print $3}')

rm:
	docker rm $(docker ps -a -q)
