#!/bin/bash
aws lambda invoke --function-name "lambda_function_name" output  --log-type Tail  --query 'LogResult' --output text  |  base64 -d >> out.txt
