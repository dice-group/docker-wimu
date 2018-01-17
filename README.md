# Docker image for WIMU

## How to run

Download index (careful, 126 GB of network traffic)
```
make download_index
```

Build the docker image:
```
make build
```

Run the image:
```
make run
```

The index/ folder will be mounted under /index inside the container. Use it for the WIMU configuration.

## TODOs
* Andre: provide configuration instructions
