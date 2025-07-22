# 📦 DevOps Food Delivery Pipeline

A microservices-based food delivery app built for hands-on DevOps practice — includes CI/CD with GitHub Actions, DockerHub image builds, and container orchestration.

---

## ✅ CI/CD Status

| Service         | Build Status |
|-----------------|--------------|
| 🧑 User Service  | ![User](https://github.com/Rakesh04107/devops-food-delivery-pipeline/actions/workflows/user-service.yml/badge.svg) |
| 📦 Order Service | ![Order](https://github.com/Rakesh04107/devops-food-delivery-pipeline/actions/workflows/order-service.yml/badge.svg) |
| 💰 Payment Service | ![Payment](https://github.com/Rakesh04107/devops-food-delivery-pipeline/actions/workflows/payment-service.yml/badge.svg) |

---

## 📁 Project Structure

devops-food-delivery-pipeline/
├── user-service/ # Node.js Express
├── order-service/ # Python Flask
├── payment-service/ # Python Flask
├── docker-compose.yml # Orchestration
└── .github/workflows/ # GitHub Actions


---

## 🐳 How to Run Locally

```bash
git clone https://github.com/Rakesh04107/devops-food-delivery-pipeline.git
cd devops-food-delivery-pipeline
docker-compose up --build
Test Health Endpoints:

curl http://localhost:3001/health   # user
curl http://localhost:3002/health   # order
curl http://localhost:3003/health   # payment
🔄 CI/CD Automation (GitHub Actions)
Whenever you push to main:

🛠️ Docker builds run via GitHub Actions

📦 Images are pushed to DockerHub:

kuberakesh04107/user-service:latest

kuberakesh04107/order-service:latest

kuberakesh04107/payment-service:latest

