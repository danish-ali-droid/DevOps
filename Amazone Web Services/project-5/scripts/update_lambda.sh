#!/bin/bash
echo "Updating Lambda function..."

# Get Lambda function name from environment variable or use default
LAMBDA_FUNCTION_NAME=${LAMBDA_FUNCTION_NAME:-"greeting-app-lambda"}

# Update Lambda function code
aws lambda update-function-code \
    --function-name $LAMBDA_FUNCTION_NAME \
    --zip-file fileb:///tmp/lambda-deployment.zip \
    --region us-east-1

echo "Lambda function updated successfully!"
exit 0
