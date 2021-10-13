import boto3
import json
import os
from botocore.exceptions import ClientError

REGION=os.environ.get('AWS_DEFAULT_REGION')
INSTANCE_ALIAS=os.environ.get('INSTANCE_ALIAS')

def get_instance():
    instances = boto3.client('connect').list_instances()
    for instance in instances['InstanceSummaryList']:
        if instance['InstanceAlias'] == INSTANCE_ALIAS:
            id = instance['Id']
        return(id)

connect = boto3.client('connect')
id = get_instance()
try:
    response = connect.delete_instance(
        InstanceId=id
    )
    print(response)
except ClientError as e:
    print(e)