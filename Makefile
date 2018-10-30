GOFLAGS :=
DOCKER_ORG ?= $(USER)
BINDATA := pkg/assets/bindata.go

all build: generate
	go build $(GOFLAGS) ./cmd/node-problem-detector-operator
.PHONY: all build

images:
	imagebuilder -f Dockerfile -t openshift/origin-node-problem-detector-operator .
.PHONY: images

clean:
	$(RM) ./node-problem-detector-operator
.PHONY: clean

deps:
	go get -u github.com/jteeuwen/go-bindata/...
.PHONY: deps

generate: deps
	go-bindata -mode 420 -modtime 1 -pkg assets -o $(BINDATA) assets/...
.PHONY: generate
