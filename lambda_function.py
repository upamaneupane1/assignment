import json
from random import seed
from random import randint

def lambda_handler(event, context):
    # TODO implement
    seed(1)
    for _ in range(10):
	    value = randint(0, 10)
	    print(value)
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }


