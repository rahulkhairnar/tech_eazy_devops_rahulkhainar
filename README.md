# Techeazy DevOps Assignment - Rahul Khainar

## 🔧 Infrastructure
- Terraform + AWS EC2
- Stage-based config (dev/prod)
- Java 21 + Git installed automatically
- App deployed from GitHub

## 🚀 How to Deploy
```bash
export AWS_ACCESS_KEY_ID=...
export AWS_SECRET_ACCESS_KEY=...
terraform apply -var="stage=dev"
```

## 🧪 How to Test
Visit `http://<public-ip>/`

## 📁 Directory Structure
Includes: terraform/, scripts/, config/, resources/

## ✅ Postman
Postman collection in: `resources/postman_collection.json`