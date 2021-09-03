from flask import Flask, render_template, request, url_for, redirect
from flask_mysqldb import MySQL
from dotenv import dotenv_values, set_key
from forms import contactForm
from flask_mail import Mail, Message

env = dotenv_values(".env")

app = Flask(__name__)
app.debug = True
app.config["MYSQL_HOST"] = env["MYSQL_HOST"]
app.config["MYSQL_USER"] = env["MYSQL_USER"]
app.config["MYSQL_PASSWORD"] = env["MYSQL_PASSWORD"]
app.config["MYSQL_DB"] = env["MYSQL_DB"]
app.config["MYSQL_CURSORCLASS"] = "DictCursor"
app.config['MAIL_SERVER'] = 'smtp.gmail.com'
app.config['MAIL_PORT'] = 465
app.config['MAIL_USERNAME'] = env["MAIL_USERNAME"]
app.config['MAIL_PASSWORD'] = env["MAIL_PASSWORD"]
app.config['MAIL_USE_TLS'] = False
app.config['MAIL_USE_SSL'] = True
mail = Mail(app)

mysql = MySQL(app)


def navbarActive():
    navActive = {"home": "", "about": "", "contact": ""}
    return navActive


@app.route('/')
def index():  # put application's code here

    print(request.accept_languages.best_match(["de", "tr"]))
    cursor = mysql.connection.cursor()
    print(cursor.execute("SELECT * from languages"))
    data = cursor.fetchall()
    cursor.close()
    navActive = navbarActive()
    navActive["home"] = "active"


    return render_template("index.html", data=data[0], navActive=navActive)


@app.route("/about")
def about():
    cursor = mysql.connection.cursor()
    cursor.execute("SELECT * from languages")
    data = cursor.fetchall()
    cursor.close()
    navActive = navbarActive()
    navActive["about"] = "active"

    return render_template("about.html", data=data[0], navActive=navActive)



def sendFeedbackMail(data,name,email):
    msg = Message('Selamlar..', sender='ismailtosunnet@gmail.com',
                  recipients=[email,"itosun_99@hotmail.com"])
    data[0]["mail_subtitle"] = data[0]["mail_appeal"] +" "+ name +" "+ data[0]["mail_subtitle"]
    msg.html = render_template("mail.html",data=data[0])
    mail.send(msg)

@app.route("/contact", methods=["GET", "POST"])
def contact():
    cursor = mysql.connection.cursor()
    cursor.execute("SELECT * from languages")
    data = cursor.fetchall()

    navActive = navbarActive()
    navActive["contact"] = "active"
    form = contactForm(request.form)
    if request.method == "POST" and form.validate():
        name = form.name.data
        email = form.email.data
        content = form.content.data
        print(name, email, content)
        cursor.execute("INSERT into contact_form(name,email,content) VALUES(%s,%s,%s)", (name, email, content))
        mysql.connection.commit()
        cursor.close()
        sendFeedbackMail(data,name,email)
        return redirect(url_for("index"))

    print(form.name.label)
    return render_template("contact.html", data=data[0], navActive=navActive, form=form)


if __name__ == '__main__':
    app.run()
