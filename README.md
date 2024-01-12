# Repo to run simulations over and over

The repo deploys a cronjob to the keramik namespace.

The cronjob runs a simulation every 30 minutes and deletes the simulation if it exists, sleeps for 30 seconds, and then creates a new one.

## Setup

Update sim-runner/simulation.yaml to define your simulation.

Update sim-runner/kustomization.yaml to define the namespace your network is deployed to (outside the scope of this repo).

## Deploy

```bash
kubectl apply -k sim-runner
```
