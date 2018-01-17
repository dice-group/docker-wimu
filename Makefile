current_branch := $(shell git rev-parse --abbrev-ref HEAD)
download_index:
	wget -O index.zip http://wimu-data.aksw.org/WimuLuceneIndex.zip
	mv index.zip index && cd index && unzip index.zip && rm index.zip

build:
	docker build -t wimu-docker:$(current_branch) docker/.

run:
	docker run -d --name wimu -p 8080:8080 --cpu-shares 2 --memory 8G -v $(shell pwd)/index:/index wimu-docker:$(current_branch)
