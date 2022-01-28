import os

from dotenv import dotenv_values
import boto3
from datetime import datetime
import pytz

env = dotenv_values(".env")


class dataBase():

    def __init__(self):

        self.client = boto3.resource('dynamodb', aws_access_key_id=os.environ.get("ACCES_KEY"),
                                     aws_secret_access_key=os.environ.get("SECRET_KEY"),
                                     region_name="eu-west-3")

    def fetch_languages(self,language):
        table = self.client.Table("DynoDb1")
        response = table.get_item(
            Key={
                'tablename': 'Webpage_Db_Languages',

            }
        )

        item = response['Item']
        print("database",language)
        if language == None:
            return item["en"]
        return item[language]

    def fetch_apps(self,language):
        table = self.client.Table("DynoDb1")
        response = table.get_item(
            Key={
                'tablename': 'WebPage_Apps',

            }
        )

        item = response['Item']


        if language == None:
            return item["en"]
        return item[language]["apps"]

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



