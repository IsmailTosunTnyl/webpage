from flask import Flask, render_template , request
from flask_mysqldb import MySQL
from dotenv import dotenv_values , set_key

env = dotenv_values(".env")

app = Flask(__name__)
app.debug = True
app.config["MYSQL_HOST"]= env["MYSQL_HOST"]
app.config["MYSQL_USER"] = env["MYSQL_USER"]
app.config["MYSQL_PASSWORD"] = env["MYSQL_PASSWORD"]
app.config["MYSQL_DB"] = env["MYSQL_DB"]
app.config["MYSQL_CURSORCLASS"] = "DictCursor"

mysql = MySQL(app)




@app.route('/')
def index():  # put application's code here

    print(request.accept_languages.best_match(["de","tr"]))
    cursor = mysql.connection.cursor()
    print(cursor.execute("SELECT * from languages"))
    data = cursor.fetchall()

    return render_template("index.html",data = data[0])


if __name__ == '__main__':
    app.run()

