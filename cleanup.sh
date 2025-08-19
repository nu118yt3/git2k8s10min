#!/bin/bash
NAMESPACE=${1:-default}
echo "Eliminando todo en namespace: $NAMESPACE"
kubectl delete all --all -n $NAMESPACE
kubectl delete configmaps --all -n $NAMESPACE
kubectl delete secrets --all -n $NAMESPACE  
kubectl delete pvc --all -n $NAMESPACE
kubectl delete ingress --all -n $NAMESPACE
echo "Limpieza completada"
