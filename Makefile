all:
	sudo bash -c "docker run --rm -it -v '$$PWD:$$PWD' -w '$$PWD' -v /var/run/docker.sock:/var/run/docker.sock docker/compose up --build"
clean:
	sudo docker ps -aq | sudo xargs -r docker rm -f
	sudo docker images -q | sudo xargs -r docker rmi -f
test:
	watch -n0 curl -s localhost:5000

