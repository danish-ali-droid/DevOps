const http = require("http");

const server = http.createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "application/json" });
    res.end(JSON.stringify({
        server: "Backend 3",
        port: 3003,
        time: new Date().toISOString()
    }));
});

server.listen(3003, () => {
    console.log("Backend 3 running on port 3003");
});
