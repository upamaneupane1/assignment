# Assignment

Please export the aws access_key and secret_key as an environment variable and install the following:
- Terraform 11
- AWS CLI


## Installation

Run the following commands to execute the code, 

```bash
set AWS_ACCESS_KEY_ID=xxxxxxxxxxxxxxxxx
set AWS_SECRET_ACCESS_KEY=xxxxxxxxxxxxxxxxxxxxxxxxxxx

terraform init
terraform plan
terraform apply --auto-approve

```

##



## Use cases covered
This set of commands will create a Lambda function and IAM role - part 1
The script script.sh will invoke the lambda function to push the random number in a file out.txt - part 2

The s3.tf will create a s3 bucket for the lamda to read.
