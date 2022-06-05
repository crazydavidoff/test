#!/bin/bash
for dir in $(find . -type dir | tail -n +2)
do
cat <<EOF > $dir/kustomization.yaml
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
resources:
EOF
find -E $dir -regex ".*\.(yml|yaml)" ! -name kustomization.yaml -type file -exec basename {} \; | sed -e 's/^/- /' >> $dir/kustomization.yaml
done
