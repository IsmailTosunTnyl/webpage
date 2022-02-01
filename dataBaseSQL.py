import mysql.connector


class DataBaseSQL:
    def __init__(self):
        self.mydb = mysql.connector.connect(
            host="localhost",
            user="root",
            password="1234",
            database="WebPage"
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
