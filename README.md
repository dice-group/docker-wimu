# Docker image for WIMU

## Requirements

- git

- docker

## How to run

Clone the directory with git:
<pre>
git clone https://github.com/dice-group/docker-wimu.git
</pre>

Download index (careful, 126 GB of network traffic)
```
make download_index
```

Build the docker image (add sudo command if needed):
```
make build
```

Run the image:
```
make run
```

The index/ folder will be mounted under /index inside the container. Use it for the WIMU configuration.

The service will be available at:
<pre>http://localhost:8080</pre>
## TODOs
Include the path to the lucene indexes:
<pre>
Dir HDT = /index/luceneDirHDT_,/index/luceneDirHDT_1,/index/luceneDirHDT_2,/index/luceneDirHDT_3
Dir Lucene endpoints = /index/endpoints
Dir Lucene dumps = /index/lodStatsDumps
</pre>
