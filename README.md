# node-problem-detector-operator
An operator to run Node Problem Detector on OpenShift

To deploy the operator:

```
oc create -f deploy/ns.yaml
oc create -f deploy/sa.yaml
oc create -f deploy/rbac.yaml
oc create -f deploy/crd.yaml
oc create -f deploy/cr.yaml
oc create -f deploy/operator.yaml
```
