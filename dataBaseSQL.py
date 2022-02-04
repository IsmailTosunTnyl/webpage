import os
import mysql.connector
import datetime
import pytz

class DataBaseSQL:
    def __init__(self):
        self.mydb = mysql.connector.connect(
            host=os.environ.get("DATABASE_HOST"),
            user=os.environ.get("DATABASE_USER"),
            password=os.environ.get("DATABASE_PSW"),
            database=os.environ.get("DATABASE_NAME")
        )
        self.cur_dict = self.mydb.cursor(dictionary=True)
        self.cur = self.mydb.cursor()

    def get_index_values(self, language):
        self.cur.execute(f"SELECT sentences FROM index_header_list WHERE language = '{language}';")
        index_header_list = self.cur.fetchall()
        self.cur_dict.execute(f"SELECT * FROM index_common WHERE language = '{language}';")
        data = self.cur_dict.fetchall()[0]
        self.mydb.commit()

        return data, index_header_list

    def get_myapps_values(self, language):
        self.cur_dict.execute(f"SELECT * FROM common WHERE language = '{language}';")
        data = self.cur_dict.fetchall()[0]
        self.cur_dict.execute(f"SELECT * FROM app_common WHERE language = '{language}';")
        apps = self.cur_dict.fetchall()
        for i in apps:
            self.cur_dict.execute(f"SELECT * FROM app_sub WHERE language = '{i['language']}' and id = '{i['id']}'")

            i["app_sub"] = self.cur_dict.fetchall()
        self.mydb.commit()
        return data,apps

    def get_about_values(self,language):
        self.cur_dict.execute(f"SELECT * FROM about_common WHERE language = '{language}';")
        data = self.cur_dict.fetchall()[0]
        return data

    def get_contact_values(self, language):
        self.cur_dict.execute(f"SELECT * FROM contact_common WHERE language = '{language}';")
        data = self.cur_dict.fetchall()[0]
        return data

    def get_404_values(self, language):
        self.cur_dict.execute(f"SELECT * FROM error WHERE language = '{language}';")
        data = self.cur_dict.fetchall()[0]
        return data

    def insert_into_formtable(self, name, email, content):
        date = datetime.datetime.now(pytz.timezone("Europe/Istanbul")).strftime("%Y-%m-%d %H:%M:%S.%f")
        self.cur.execute(f"INSERT INTO form (date,name,email,content) VALUES (%s,%s,%s,%s);",
                         (datetime.datetime.now(pytz.timezone("Europe/Istanbul")), name, email, content))
        self.mydb.commit()
