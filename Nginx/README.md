# 🛡️ Advanced Nginx For  DevOps 
![Nginx](https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white)
![DevOps](https://img.shields.io/badge/DevOps-Engineering-blueviolet?style=for-the-badge)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

Welcome to my specialized Nginx repository. This is not just a collection of files, but a documented journey of architecting high-performance, secure, and scalable web infrastructures. From managing static sites to complex load-balanced clusters, this hub covers the core pillars of modern web operations.

---

## 🏛️ Comprehensive Architectural Patterns

### 1. 🚀 [The Full-Stack Secure Project](./nginx-as-ProxyServer)
*Focus: Security, SSL Termination, and Reverse Proxying*
This is the flagship project where Nginx acts as a secure gateway for a multi-tier application.
- **Backend Integration:** Nginx proxies requests to a **Node.js** API while masking the internal port (5000).
- **Database Layer:** Secure communication with **MySQL**.
- **SSL Termination:** Implementation of **OpenSSL** self-signed certificates to encrypt data-in-transit (Port 443).
- **Key Directives used:** `proxy_pass`, `proxy_set_header`, `listen 443 ssl`.

### 2. ⚖️ [Horizontal Scaling: Load Balancer](./nginx-as-LoadBalancer)
*Focus: High Availability and Traffic Distribution*
Demonstrating how to handle thousands of requests by distributing the load across a server farm.
- **Cluster Management:** Managing **3 independent Node.js backends** simultaneously.
- **Algorithms:** Implementation of **Round-Robin** (default) and **Weighted** distribution to prioritize stronger server nodes.
- **Failover Logic:** Understanding how Nginx identifies healthy vs. unhealthy backends.
- **Key Directives used:** `upstream`, `server`, `proxy_next_upstream`.

### 3. 🌐 [Multi-Tenant Web Hosting](./nginx-as-WebServer)
*Focus: Resource Optimization and Virtual Hosting*
How to host multiple business domains on a single hardware resource without resource leakage.
- **Virtual Blocks:** Separate `server {}` blocks for `site1`, `site2`, and `site3`.
- **Isolation:** Each site has its own isolated document root in `/websites/`.
- **Modular Configs:** Utilizing `include` and `conf.d` patterns for clean configuration management.
- **Key Directives used:** `server_name`, `root`, `index`, `try_files`.

---

## 📂 Technical Directory Structure
```bash
Nginx/
├── project/                 # High-Security 2-Tier Application
│   ├── backend/             # MVC Pattern API (Express.js)
│   ├── frontend/            # Client-side Logic
│   └── nginx.conf           # SSL Handshake & Proxy Rules
├── nginx-as-LoadBalancer/   # Scaling Lab
│   ├── backends/            # Cluster of 3 Micro-services
│   └── nginx.conf           # Upstream Load Balancing Logic
├── nginx-as-WebServer/      # Virtual Hosting Lab
│   ├── websites/            # Isolated HTML Roots (Site 1, 2, 3)
│   └── nginx-sites/         # Virtual Host Mapping (.conf files)
└── notes/                   # CLI Cheatsheets & Troubleshooting Docs
```
🛠️ Core DevOps Competencies Demonstrated

1.Traffic Control: Managing headers (X-Real-IP, X-Forwarded-For) to maintain client visibility through the proxy.
2. Security Hardening: Implementing SSL/TLS and using .gitignore to protect sensitive .key and .env files.

3. Performance: Understanding the Nginx Event-Loop model and how it handles concurrent connections.

4. System Administration: Manual deployment on Linux (Ubuntu/AlmaLinux), managing services with systemctl, and debugging with journalctl.

## 👨‍💻 Author
**Danish Ali** *BS Information Technology Student | Aspiring DevOps & Cloud Engineer*

- **GitHub:** [@danish-ali-droid](https://github.com/danish-ali-droid)
