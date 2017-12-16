import base64
import boto3
import os

event_fn = os.environ['EVENT_LAMBDA_NAME']
client = boto3.client('lambda')


def lambda_handler(event, context):
    
    print event_fn
    
    records = event['Records']
    for rec in records:
        data = rec['kinesis']['data']
        decoded = base64.b64decode(data)
        print decoded
        
        response = client.invoke(
            FunctionName=event_fn,
            InvocationType='Event',
            Payload=decoded
        )

        print response