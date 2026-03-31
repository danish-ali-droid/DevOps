#!/bin/bash
echo "Running after install script..."
echo "Verifying deployment package exists"
if [ -f /tmp/lambda-deployment.zip ]; then
    echo "Deployment package verified successfully"
else
    echo "Error: Deployment package not found"
    exit 1
fi
exit 0
