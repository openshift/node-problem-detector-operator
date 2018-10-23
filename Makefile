GOFLAGS :=
DOCKER_ORG ?= $(USER)

all build:
	go build $(GOFLAGS) ./cmd/node-problem-detector-operator
.PHONY: all build

images:
	imagebuilder -f Dockerfile -t openshift/origin-node-problem-detector-operator .
.PHONY: images

clean:
	$(RM) ./node-problem-detector-operator
.PHONY: clean
