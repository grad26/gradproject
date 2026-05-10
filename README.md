Automated Cloud Infrastructure Deployment & Monitoring (DevOps Project)

Overview

This project demonstrates a full DevOps lifecycle implementation for deploying a Prime Video Clone application using modern cloud-native tools and practices.

It covers:

- Infrastructure provisioning using IaC
- CI/CD automation
- Containerization and image registry
- GitOps deployment
- Monitoring and security scanning

---
 Architecture

The system follows this workflow:

- Terraform → Provision AWS infrastructure (VPC, EC2, EKS)
- Amazon EKS → Kubernetes cluster for application deployment
- Jenkins → CI/CD automation pipelines
- Docker → Containerization of application
- Amazon ECR → Docker image registry
- ArgoCD → GitOps-based deployment to EKS
- Grafana & Prometheus → Monitoring & observability
- Trivy → Security vulnerability scanning
- SonarQube → Code quality analysis

---

Project Structure

terraform/
│── infrastructure/   # VPC, EC2 setup
│── eks/              # EKS cluster provisioning
│
app/
│── source code (Prime Video Clone)
│
jenkins/
│── CI/CD pipeline scripts
│
kubernetes/
│── Deployment manifests (ArgoCD / K8s YAMLs)

---

Infrastructure Setup (Terraform)

Infrastructure was provisioned using Terraform:

terraform init
terraform apply

This created:

- AWS networking (VPC, Subnets, Security Groups)
- EC2 instance (for Jenkins & tools)
- EKS cluster for Kubernetes workloads

---

CI/CD Pipeline (Jenkins)

Two Jenkins pipelines were implemented:

1. Infrastructure Pipeline

- Automates Terraform provisioning

2. Application Pipeline

Handles:

- Git checkout
- SonarQube analysis
- Dependency installation (npm)
- Trivy security scan
- Docker image build
- Push to Amazon ECR
- Image cleanup

---

Containerization & Registry

- Application is containerized using Docker
- Images are stored in Amazon ECR
- Tagged versions are pushed automatically via Jenkins pipeline

---

Deployment (GitOps with ArgoCD)

- ArgoCD manages continuous deployment to EKS
- Kubernetes manifests are synced automatically
- Application is exposed via Load Balancer

---

Monitoring

Monitoring stack includes:

- Prometheus → Metrics collection
- Grafana → Visualization dashboards

Grafana dashboards display:

- Cluster health
- Application performance
- Resource utilization

---

Security & Code Quality

Trivy

- Scans Docker images for vulnerabilities
- Integrated into Jenkins pipeline

SonarQube

- Static code analysis
- Code quality & bug detection
- Quality Gate enforced in CI/CD pipeline

---

Evidence of Work (Screenshots)

The following were demonstrated:

- Grafana dashboards running and collecting metrics
- Application deployed and accessible via Load Balancer
- EKS cluster running successfully
- Jenkins pipeline execution
- Trivy scan results
- SonarQube analysis results

---

Notes

- AWS infrastructure was provisioned using Terraform and later destroyed to optimize cost
- All tools were integrated into a full CI/CD + GitOps workflow
- Security and monitoring were fully automated in the pipeline

---

Conclusion

This project demonstrates a complete DevOps lifecycle including:

- Infrastructure as Code
- CI/CD automation
- Container orchestration
- GitOps deployment
- Monitoring and security

Following industry best practices for scalable cloud-native system
