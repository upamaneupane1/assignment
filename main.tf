provider "aws" {
        region = "us-east-1"
        profile = "default"
}
resource "aws_iam_role" "lambda_function_terra" {
  name = "lambda_function_terra"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_lambda_function" "test_lambda" {
  filename      = "code.zip"
  function_name = "lambda_function_name"
  role          = "${aws_iam_role.lambda_function_terra.arn}"
  handler       = "lambda_function.lambda_handler"

  source_code_hash = "${filebase64sha256("code.zip")}"

  runtime = "python3.7"

  
}
