const http = require('http');

const server = http.createServer((req, res) => {
    res.writeHead(200, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({
        server: 'Backend 1',
        port: 3001,
        time: new Date().toISOString()
    }));
});

server.listen(3001, () => {
    console.log('Backend 1 running on port 3001');
});
