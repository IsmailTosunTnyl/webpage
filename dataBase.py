import mysql.connector
from mysql.connector import Error
from dotenv import dotenv_values
env = dotenv_values(".env")

class dataBase():

    def __init__(self,database):
        self.mydb = mysql.connector.connect(
          host=env["MYSQL_HOST"],
          user=env["MYSQL_USER"],
          password=env["MYSQL_PASSWORD"],
          database=database



        )


    def fetch_languages(self):
        self.cursor = self.mydb.cursor(dictionary=True)
        self.cursor.execute("SELECT * from languages")
        data = self.cursor.fetchall()
        self.cursor.close()
        return data[0]

    def insertto_contact_form(self,name,email,content):
        self.cursor = self.mydb.cursor(dictionary=True)
        self.cursor.execute("INSERT into contact_form(name,email,content) VALUES(%s,%s,%s)", (name, email, content))
        self.mydb.commit()
        self.cursor.close()

print(dataBase(env["MYSQL_DB"]).fetch_languages())
