# Terraform Azure AKS Baseline

## Overview

This project provisions a basic Azure Kubernetes Service (AKS) environment using Terraform and demonstrates deployment, exposure, and autoscaling of a sample Kubernetes workload.

The goal of the project is to build a practical Azure cloud engineering / DevOps baseline using Infrastructure as Code, then validate the cluster with real Kubernetes operations.

## What this project deploys

Using Terraform, this project provisions:

- Azure Resource Group
- Azure Kubernetes Service (AKS) cluster
- System node pool
- Azure Log Analytics Workspace
- Azure Monitor integration for AKS

Inside the AKS cluster, the project also tested:

- Kubernetes Deployment (`nginx`)
- Kubernetes Service (`LoadBalancer`)
- Horizontal Pod Autoscaler (HPA)

## Architecture

High-level flow:

GitHub  
→ Terraform  
→ Azure Resource Group  
→ AKS Cluster  
→ Node Pool  
→ Log Analytics Workspace  
→ Kubernetes Workload (`nginx`)  
→ LoadBalancer Service  
→ Horizontal Pod Autoscaler

## Repository structure

```text
terraform-azure-aks/
├── modules/
│   └── aks/
│       ├── main.tf
│       ├── variables.tf
│       └── Outputs.tf
├── environments/
│   └── dev/
│       ├── providers.tf
│       ├── variables.tf
│       ├── versions.tf
│       └── Outputs.tf
├── env/
│   └── dev/
│       ├── main.tf
│       ├── providers.tf
│       ├── variables.tf
│       ├── versions.tf
│       ├── Workload.tf
│       ├── hpa.tf
│       └── k8s_provider.tf
├── .gitignore
├── LICENSE
└── README.md
