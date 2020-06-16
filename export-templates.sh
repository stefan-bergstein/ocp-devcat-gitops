oc get template -n openshift | grep -v  NAME | cut -f 1 -d " " | while read t
do
  echo $t
  oc get template ${t} -o yaml --export -n openshift > ${t}-tmpl.yaml
done
