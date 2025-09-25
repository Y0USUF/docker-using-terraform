# Task 3: Infrastructure as Code (IaC) with Terraform and Docker

## 🎯 Objective
Provision a **local Docker container** using **Terraform** to demonstrate Infrastructure as Code (IaC) principles.

---

## 🛠️ Tools Used
- [Terraform](https://www.terraform.io/)  
- [Docker](https://www.docker.com/)  

---

## 📂 Files in this Repository
- **main.tf** → Terraform configuration file to provision Docker resources  
- **README.md** → Documentation for setup, usage, and cleanup  
- **Execution Logs** (to be added by you) → Terraform commands output  

---

## 🚀 Steps to Run

### 1 Clone this repository
```bash
git clone https://github.com/Y0USUF/docker-using-terraform.git
cd docker-using-terraform.git
```
### 2️ Initialize Terraform
```
terraform init
```
### 3️ Review the Execution Plan
```
terraform plan
```

### 4️ Apply the Configuration
```
terraform apply
```

Type yes when prompted.

Terraform will:

Pull the nginx:latest image

Create a container named my_nginx

Map host available-port → container port 80

### ✅ Verification Steps

Check running containers
```
docker ps
```

Expected output:
```
CONTAINER ID   IMAGE          COMMAND                  PORTS                   NAMES
abc12345       nginx:latest   "/docker-entrypoint.…"   0.0.0.0:<port-number>->80/tcp    my_nginx
```

Access in browser
```
http://localhost:<port-number>
```

You should see the Nginx Welcome Page 🎉

Check Terraform state
```
terraform state list
```

Should display:
```
docker_image.nginx_image
docker_container.nginx_container
```

🧹 Cleanup

To destroy the resources:
```
terraform destroy
```

Type yes when prompted.

This will remove both the container and image.
