FROM openshift/origin-release:golang-1.10
COPY . /go/src/github.com/openshift/node-problem-detector-operator
RUN cd /go/src/github.com/openshift/node-problem-detector-operator && go build ./cmd/node-problem-detector-operator

FROM centos:7
COPY --from=0 /go/src/github.com/openshift/node-problem-detector-operator/node-problem-detector-operator /usr/bin/node-problem-detector-operator

