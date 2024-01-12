#!/bin/bash

# This script is used to run the simulation on the cluster.
set -exo pipefail

kubectl delete simulations ceramic-write-only || true # ignore error if it doesn't exist
sleep 30
kubectl create -f /simulation/simulation.yaml