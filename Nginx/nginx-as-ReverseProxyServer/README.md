# 🎓 Student Management System
![Build Status](https://img.shields.io/badge/Maintained%3F-yes-green.svg)
![NodeJS](https://img.shields.io/badge/Node.js-6DA55F?style=for-the-badge&logo=node.js&logoColor=white)
![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white)
![Nginx](https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white)

A high-performance, secure, and scalable Student Management System. This project demonstrates advanced **Linux Administration**, **Reverse Proxying**, and **SSL Security** implementation.

---

## 🌟 Key Features
- **Full MVC Architecture:** Clean separation of Models, Views, and Controllers.
- **Nginx Reverse Proxy:** Unified entry point for Frontend and Backend.
- **SSL/TLS Encryption:** Secure HTTPS communication enabled via OpenSSL.
- **Secure Environment:** Zero-leak policy for credentials using `.env` and `.gitignore`.
- **Database Integrity:** Relational data management using MySQL.

---

## 🏗️ System Architecture
The following diagram illustrates how traffic flows through the system:



1. **User** requests the site via `https://192.168.11.108`.
2. **Nginx** (Port 443) terminates SSL and routes traffic.
3. **Static Files** are served for the Frontend.
4. **API Calls** are proxied to the Node.js backend (Port 5000).

---

## 🚀 Quick Start Guide

### 1. Clone & Install
```bash
git clone [https://github.com/danish-ali-droid/DevOps.git](https://github.com/danish-ali-droid/DevOps.git)
cd DevOps/Nginx/project/backend
npm install
```
2. Environment Setup
Create a .env file in the backend/ directory:
```
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_secure_password
DB_NAME=student_db
PORT=5000
```
3. Nginx SSL Setup
Generate self-signed certificates and link the config:
```
# Generate Certs
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-node-app.key -out /etc/ssl/certs/nginx-node-app.crt

# Apply Nginx Config
sudo ln -s $(pwd)/nginx.conf /etc/nginx/conf.d/project.conf
sudo nginx -t && sudo systemctl restart nginx
```
📂 Directory Structure
```
.
├── backend/
│   ├── config/          # Database Connection
│   ├── controllers/     # API Logic
│   ├── models/          # SQL Queries
│   ├── routes/          # Express Routes
│   └── server.js        # Entry Point
├── frontend/            # Client-side Application
├── nginx.conf           # Proxy Configuration
└── .gitignore           # Security Rules
```
## 🛠️ Tech Stack

- **Backend:** Node.js, Express.js
- **Database:** MySQL
- **Web Server:** Nginx
- **Security:** OpenSSL, dotenv
- **OS:** Linux (AlmaLinux / Ubuntu)

---

## 👨‍💻 Author
**Danish Ali** *IT Student & Cloud Enthusiast*

- **GitHub:** [@danish-ali-droid](https://github.com/danish-ali-droid)

---
