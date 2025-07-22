# devops-food-delivery-pipeline
Online Food Delivery Platform (ZestEats) : Zaika Ghar Jesa

DevOps Food Delivery Pipeline — Week 1
A simplified microservices-based food delivery system for learning DevOps tooling and practices — built with Node.js, Flask, Docker, and Docker Compose.

📁 Project Structure
bash
Copy
Edit
devops-food-delivery-pipeline/
├── user-service/        # Node.js Express service
│   └── app.js
│   └── Dockerfile
├── order-service/       # Python Flask service
│   └── app.py
│   └── Dockerfile
├── payment-service/     # Python Flask service
│   └── app.py
│   └── Dockerfile
├── docker-compose.yml   # Multi-container orchestration
└── README.md
🚀 Services Overview
Service	Tech Stack	Port	Health Endpoint
🧑 User Service	Node.js + Express	3001	/health → User service is healthy
📦 Order Service	Python + Flask	3002	/health → Order service is healthy
💰 Payment Service	Python + Flask	3003	/health → Payment service is healthy

🐳 Running the Project (Locally with Docker)

✅ Step 1: Clone the repo
git clone https://github.com/1md3nd/devops-food-delivery-pipeline.git
cd devops-food-delivery-pipeline

✅ Step 2: Build and run containers
docker-compose up --build

✅ Step 3: Test endpoints
# User Service
curl http://localhost:3001/health

# Order Service
curl http://localhost:3002/health

# Payment Service
curl http://localhost:3003/health
🔧 Sample Payment API (POST)

curl -X POST http://localhost:3003/pay \
  -H "Content-Type: application/json" \
  -d '{"amount": "200"}'

Returns:
{"message": "Payment of ₹200 processed"}
