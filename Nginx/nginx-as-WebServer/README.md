# 🌐 Nginx Multi-Site Web Hosting (Virtual Hosting)
![Nginx](https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white)
![Hosting](https://img.shields.io/badge/Hosting-Multi--Site-blue?style=for-the-badge)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

This project demonstrates the implementation of **Virtual Hosting** using Nginx. It allows a single server instance to host and manage multiple independent websites, each with its own domain name, root directory, and configuration settings.

---

## 🏗️ Architecture & Design
The project is structured to ensure maximum isolation between different websites. Nginx uses **Server Blocks** to identify which site to serve based on the `Host` header in the HTTP request.



- **Isolated Web Roots:** Each site has its own directory in `websites/`, preventing cross-site file access.
- **Modular Configurations:** Separate `.conf` files in `nginx-sites/` make it easy to enable or disable specific sites without affecting the entire server.
- **Scalability:** New sites can be added simply by creating a new folder and a corresponding config file.

---

## 📁 Directory Structure
```text
nginx-webhosting/
├── websites/           # Data Layer: Source code for each site
│   ├── site1/          # Deployment files for Site 1
│   ├── site2/          # Deployment files for Site 2
│   └── site3/          # Deployment files for Site 3
├── nginx-sites/        # Control Layer: Nginx Virtual Host configs
│   ├── site1.conf      # Port/Domain settings for Site 1
│   ├── site2.conf      # Port/Domain settings for Site 2
│   └── site3.conf      # Port/Domain settings for Site 3
└── README.md           # Documentation
```
⚙️ Configuration Logic
Each configuration file follows a professional template to ensure clean routing:
```Nginx
server {
    listen 80;
    server_name site1.local; # Local domain mapping

    # Path to the specific site folder
    root /home/danish-ali/DevOps/Nginx/nginx-webhosting/websites/site1;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}
```
🚀 Deployment Guide
1. Local DNS Setup
To simulate real domains, add these to your /etc/hosts file:
```Bash
127.0.0.1 site1.local site2.local site3.local
```
2. Linking & Validation
Enable the sites by linking them to Nginx's active configuration directory:
```Bash
# Create Symbolic Links
sudo ln -s $(pwd)/nginx-sites/*.conf /etc/nginx/conf.d/

# Test Nginx Syntax
sudo nginx -t

# Apply Changes
sudo systemctl restart nginx
```
🔒 Best Practices Implemented
1. Modular Configs: Instead of editing the main nginx.conf, we use the conf.d approach.
2. Error Handling: Custom 404 logic can be added per site.
3. Permission Management: Ensuring the Nginx user has appropriate read access to the project directories.
## 👨‍💻 Author
**Danish Ali** *IT Student & Aspiring DevOps Engineer*

- **GitHub:** [@danish-ali-droid](https://github.com/danish-ali-droid)
---
