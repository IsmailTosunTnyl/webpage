from flask import Flask, render_template, request, url_for, redirect
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


def sendFeedbackMail( data,name, email):

    msg = Message('Selamlar..', sender='ismailtosunnet@gmail.com',
                  recipients=[email, "itosun_99@hotmail.com"])
    data["mail_subtitle"] = data["mail_appeal"] + " " + name + " " + data["mail_subtitle"]
    msg.html = render_template("mail.html", data=data)
    mail.send(msg)


@app.route("/contact", methods=["GET", "POST"])
def contact():
    data = webpageDB.fetch_languages()

    navActive = navbarActive()
    navActive["contact"] = "active"

    form = contactForm(request.form)

    if request.method == "POST" and form.validate():

        name = form.name.data
        email = form.email.data
        content = form.content.data
        print(name, email, content)
        print("FORMMM", form.validate())

        print(name, email, content)
        webpageDB.insertto_contact_form(name,email,content)
        sendFeedbackMail(data, name, email)
        return redirect(url_for("index"))

    print(form.name.label)
    return render_template("contact.html", data=data, navActive=navActive, form=form)


if __name__ == '__main__':
    app.run()
