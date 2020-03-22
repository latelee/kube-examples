# make led_light_mapper
.PHONY: default led_light_mapper
led_light_mapper:
	export GOARCH=amd64; export GOOS="linux"; export GOARM=""; export CGO_ENABLED=1; export CC=cc; \
    go build light_mapper.go
	docker build -t latelee/led-light-mapper-x86:v1.1 . -f Dockerfile 
	export GOARCH=arm; export GOOS="linux"; export GOARM=7; export CGO_ENABLED=1; export CC=arm-linux-gnueabihf-gcc; \
    go build light_mapper.go
	docker build -t latelee/led-light-mapper-arm:v1.1 . -f Dockerfile-arm
