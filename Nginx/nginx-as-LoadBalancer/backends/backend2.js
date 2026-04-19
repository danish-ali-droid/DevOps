const http = require("http");

const server = http.createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "application/json" });
    res.end(JSON.stringify({
        server: "Backend 2",
        port: 3002,
        time: new Date().toISOString()
    }));
});

server.listen(3002, () => {
    console.log("Backend 2 running on port 3002");
});
