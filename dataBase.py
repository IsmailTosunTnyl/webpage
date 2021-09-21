
from dotenv import dotenv_values
import boto3
from datetime import datetime
import pytz

env = dotenv_values(".env")


class dataBase():

    def __init__(self):


        self.client = boto3.resource('dynamodb', aws_access_key_id=env["aws_access_key_id"],
                                     aws_secret_access_key=env["aws_secret_access_key"],
                                     region_name=env["region_name"])

    def fetch_languages(self):
        table = self.client.Table("DynoDb1")
        response = table.get_item(
            Key={
                'tablename': 'WebpageDb',

            }
        )
        item = response['Item']
        return item["languages"]

    def insertto_contact_form(self, name, email, content):
        table = self.client.Table("DynoDb1")
        nowDate = datetime.now(pytz.timezone('Europe/Istanbul')).strftime("%d/%m/%Y %H:%M:%S")
        form_newdata = {"name": name, "date": nowDate, "email": email, "content": content}
        result = table.update_item(
            Key={
                'tablename': 'WebPageDb_contactform',

            },
            UpdateExpression="SET form_data = list_append(form_data, :i)",
            ExpressionAttributeValues={
                ':i': [form_newdata],
            },
            ReturnValues="UPDATED_NEW"
        )



