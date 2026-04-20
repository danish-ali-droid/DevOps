
# ⚖️ Nginx as a Load Balancer (High Availability Setup)
![Nginx](https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white)
![Status](https://img.shields.io/badge/Architecture-High--Availability-orange?style=for-the-badge)

This project demonstrates how to configure **Nginx** as a Load Balancer to distribute incoming traffic across multiple backend servers. It ensures high availability and improves the reliability of web applications.

---

## 🏗️ Load Balancing Architecture
This setup uses Nginx as the entry point (Load Balancer) which sits in front of multiple application instances.



- **Nginx Load Balancer:** Listening on Port 80.
- **Backend Servers:** Multiple Node.js/Python or Static servers running on different ports or IPs.
- **Traffic Distribution:** Requests are distributed using the Round Robin (or Weighted) algorithm.

---

## ⚙️ Configuration Highlights
The core logic resides in the `nginx.conf` file using the `upstream` module:

```nginx
upstream myapp1 {
    # Distributing traffic to multiple servers
    server 127.0.0.1:8001 weight=3; # Higher weight gets more traffic
    server 127.0.0.1:8002;
    server 127.0.0.1:8003;
}

server {
    listen 80;

    location / {
        proxy_pass http://myapp1;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }
}
```
## 🚀 Key Learning Objectives

- Reverse Proxying: Routing client requests to the appropriate backend.
- Upstream Module: Defining groups of servers to share the load.
- Health Checks: Basic understanding of how Nginx handles server availability.
- Weighted Load Balancing: Prioritizing more powerful servers by assigning weights.

## 📂 Project Structure
```text
nginx-loadbalancer/
├── nginx.conf          # Load Balancer rules & Upstream blocks
├── backends/           # Application logic
│   ├── backend1.js     # Server instance 1
│   ├── backend2.js     # Server instance 2
│   └── backend3.js     # Server instance 3
└── README.md           # Documentation
```
## 🛠️ How to Test

- Start Backend Servers: Ensure your backend services are running on the ports defined in the upstream block.
- Apply Nginx Config:
```bash
sudo cp nginx.conf /etc/nginx/conf.d/load-balancer.conf
sudo nginx -t
sudo systemctl restart nginx
```
- Verify: Refresh your browser multiple times and observe how requests are served by different backend instances.
## 👨‍💻 Author
**Danish Ali** *IT Student & Aspiring DevOps Engineer*

- **GitHub:** [@danish-ali-droid](https://github.com/danish-ali-droid)

