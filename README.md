# ocp-devcat-gitops
OpenShift Developer Catalog GitOps Demo

## Prereps

### Templates GitOps 

**Unmanage Samples:**

```
oc edit configs.samples.operator.openshift.io/cluster
```

set managementState to Unmanaged
```
managementState: Unmanaged
```

**Save Templates:**

See export-templates.sh

**Multicluster Subscription Operator**
Install Multicluster Subscription Operator intp openshift namespace

Configure Subscription Operator

```
cd subs/
oc apply -k . -n openshift
```
