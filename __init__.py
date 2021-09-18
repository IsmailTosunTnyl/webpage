from flask import Flask, render_template, request, url_for, redirect , flash
from flask_mysqldb import MySQL
from dotenv import dotenv_values, set_key
from dataBase import dataBase
from forms import contactForm
from wtforms import Form, StringField, validators, TextAreaField

import email_validator

from flask_mail import Mail, Message

env = dotenv_values(".env")

app = Flask(__name__)
app.debug = True

app.config['MAIL_SERVER'] = 'smtp.gmail.com'
app.config['MAIL_PORT'] = 465
app.config['MAIL_USERNAME'] = env["MAIL_USERNAME"]
app.config['MAIL_PASSWORD'] = env["MAIL_PASSWORD"]
app.config['MAIL_USE_TLS'] = False
app.config['MAIL_USE_SSL'] = True
app.config['SECRET_KEY'] = 'any string works here'
mail = Mail(app)

mysql = MySQL(app)

webpageDB = dataBase(env["MYSQL_DB"])






def navbarActive():
    navActive = {"home": "", "about": "", "contact": ""}
    return navActive


@app.route('/')
def index():  # put application's code here

    print(request.accept_languages.best_match(["de", "tr"]))


    data = webpageDB.fetch_languages()

    navActive = navbarActive()
    navActive["home"] = "active"

    return render_template("index.html", data=data, navActive=navActive)


@app.route("/about")
def about():
    data = webpageDB.fetch_languages()
    navActive = navbarActive()
    navActive["about"] = "active"


    return render_template("about.html", data=data, navActive=navActive)


def sendFeedbackMail( data,name, email,content):

    msg = Message('Selamlar..', sender='ismailtosunnet@gmail.com',
                  recipients=[email, "itosun_99@hotmail.com"])        #feedback mail for user
    data["mail_subtitle"] = data["mail_appeal"] + " " + name + " " + data["mail_subtitle"]
    msg.html = render_template("mail.html", data=data)
    mail.send(msg)

    msgtome = Message(name, sender='ismailtosunnet@gmail.com',      #feedback mail for me
                  recipients=["itosun_99@hotmail.com"])

    msgtome.html = f"<h1>{name}</h1> <br> <h1>{email}</h1> <br> <p>{content}</p>"
    mail.send(msgtome)


@app.route("/contact", methods=["GET", "POST"])
def contact():
    data = webpageDB.fetch_languages()

    navActive = navbarActive()
    navActive["contact"] = "active"

    form = contactForm(request.form)

    if request.method == "POST" and form.validate():
        try:
            name = form.name.data
            email = form.email.data
            content = form.content.data
            webpageDB.insertto_contact_form(name,email,content)
            sendFeedbackMail(data, name, email,content)             #flash message
            flash("Mesajınız alındı","success")
            return redirect(url_for("index"))
        except:
            flash("Hata daha sonra tekrar deneyin", "danger")
            return redirect(url_for("index"))

    return render_template("contact.html", data=data, navActive=navActive, form=form)


@app.errorhandler(404)
def page_not_found(e):
    data = webpageDB.fetch_languages()
    return render_template('404.html',navActive=None,data=data)

if __name__ == '__main__':
    app.run()
