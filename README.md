# node-problem-detector-operator
An operator to run Node Problem Detector on OpenShift

To deploy the operator:

```
oc create -f deploy/crd.yaml
oc create -f deploy/ns.yaml
oc create -f deploy/sa.yaml
oc create -f deploy/rbac.yaml
oc create -f deploy/operator.yaml
oc create -f deploy/cr.yaml
```

To uninstall the operator and Node Problem Detector:
```
oc delete -f deploy/cr.yaml
oc delete -f deploy/operator.yaml
oc delete -f deploy/rbac.yaml
oc adm policy remove-scc-from-user -n openshift-node-problem-detector privileged -z node-problem-detector
oc delete -f deploy/sa.yaml
oc delete -f deploy/ns.yaml
oc delete -f deploy/crd.yaml

```
