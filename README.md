# 🚀 DevOps Capstone Project (CI/CD + AWS EKS + Terraform + Jenkins)

## 📌 Overview

This project is a complete end-to-end DevOps implementation demonstrating a production-style CI/CD pipeline using **Jenkins, Docker, AWS ECR, Kubernetes (EKS), Terraform, and Helm**.

It simulates a real-world cloud-native deployment workflow where application code is automatically built, containerized, pushed to a registry, and deployed to a Kubernetes cluster on AWS.

---

## 🏗️ Architecture

**Flow:**

GitHub → Jenkins CI Pipeline → Docker Build → AWS ECR → Kubernetes (EKS via Helm) → Monitoring (Prometheus + Grafana)

<img width="1672" height="941" alt="image" src="https://github.com/user-attachments/assets/2d2f9c49-7360-4443-b6bf-441c78e3a836" />

---

## ⚙️ Tech Stack

* **CI/CD:** Jenkins
* **Containerization:** Docker
* **Cloud Provider:** AWS
* **Container Registry:** Amazon ECR
* **Infrastructure as Code:** Terraform
* **Orchestration:** Kubernetes (EKS)
* **Deployment Tool:** Helm
* **Monitoring:** Prometheus + Grafana
* **Application:** Node.js (Express)

---

## 📁 Project Structure

```
capstone-project/
│
├── app/                    # Node.js application
│   ├── server.js
│   ├── package.json
│   └── Dockerfile
│
├── terraform/             # AWS infrastructure (VPC, EKS, etc.)
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│
├── capstone-chart/       # Helm chart for Kubernetes deployment
│   ├── templates/
│   ├── values.yaml
│   └── Chart.yaml
│
├── Jenkinsfile           # CI/CD pipeline definition
├── kubernetes/           # Raw K8s manifests (if used)
└── README.md
```

---

## 🚀 CI/CD Pipeline Stages (Jenkins)

1. **Code Checkout**

   * Pull source code from GitHub

2. **Build Application**

   * Install dependencies
   * Run basic build checks

3. **Docker Image Build**

   * Build Docker image from Dockerfile

4. **Push to Amazon ECR**

   * Authenticate using AWS CLI
   * Push versioned image

5. **Deploy to Kubernetes (EKS)**

   * Update Helm values
   * Deploy application to cluster

---

## ☸️ Kubernetes Deployment

* Deployment managed using Helm
* Configurable replicas via `values.yaml`
* Rolling updates enabled

Example:

```yaml
replicaCount: 2
image:
  repository: <ECR_REPO>
  tag: latest
```

---

## ☁️ Infrastructure (Terraform)

Terraform provisions:

* VPC
* Subnets (Public/Private)
* Internet Gateway
* Route Tables
* EKS Cluster
* IAM Roles

---

## 📊 Monitoring Stack

* **Prometheus** → Metrics collection
* **Grafana** → Visualization dashboards

Used to monitor:

* CPU usage
* Memory usage
* Pod health
* Cluster performance

---

## 🔐 Security Highlights

* IAM roles for EKS and Jenkins
* No hardcoded credentials
* AWS best practices for networking

---

## 🧪 How to Run Project

### 1. Clone Repo

```bash
git clone https://github.com/arshitchoubey18/capstone-project.git
cd capstone-project
```

### 2. Deploy Infrastructure

```bash
cd terraform
terraform init
terraform apply
```

### 3. Build & Deploy via Jenkins

* Trigger pipeline from Jenkins UI

### 4. Deploy via Helm

```bash
helm install app ./capstone-chart
```

---

## 📌 Key Learning Outcomes

* CI/CD pipeline automation
* AWS infrastructure provisioning with Terraform
* Kubernetes application deployment
* Helm-based configuration management
* Docker image lifecycle management
* Monitoring & observability setup

---

## 🧠 Interview Talking Points

You should be able to explain:

* How Jenkins triggers CI/CD pipeline
* How Docker image flows to ECR
* How Kubernetes pulls and deploys image
* Why Terraform is used for infra provisioning
* How Helm simplifies Kubernetes deployments
* How monitoring helps in production debugging

---

## 🚀 Future Improvements

* Add ArgoCD (GitOps)
* Implement Blue-Green deployment
* Add HPA (Auto Scaling)
* Add centralized logging (EFK/Loki)
* Add rollback strategy in pipeline

---

## 👨‍💻 Author

Arshit Choubey
Technical Support Engineer → DevOps Engineer (Transitioning)

---

## 📎 Status

✔ CI/CD Pipeline Ready
✔ Kubernetes Deployment Ready
✔ AWS EKS Infrastructure Ready
✔ Monitoring Stack Integrated
