from flask import Flask, render_template, request, url_for, redirect, flash
from wtforms import Form, StringField, validators, TextAreaField
from dotenv import dotenv_values
from dataBase import dataBase

import threading

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

webpageDB = dataBase()


def navbarActive():
    navActive = {"home": "", "about": "", "contact": "", "apps": "has-dropdown"}
    return navActive


@app.route('/')
def index():
    data = webpageDB.fetch_languages(request.accept_languages.best_match(["en", "tr"]))

    navActive = navbarActive()
    navActive["home"] = "active"

    return render_template("index.html", data=data, navActive=navActive)


@app.route("/about")
def about():
    data = webpageDB.fetch_languages(request.accept_languages.best_match(["en", "tr"]))
    navActive = navbarActive()
    navActive["about"] = "active"

    return render_template("about.html", data=data, navActive=navActive)


def sendFeedbackMail(data, name, email, content):
    msg = Message(data["mail_subject"], sender='ismailtosunnet@gmail.com',
                  recipients=[email, "itosun_99@hotmail.com"])  # feedback mail for user
    data["mail_subtitle"] = data["mail_appeal"] + " " + name + " " + data["mail_subtitle"]
    with app.app_context():
        msg.html = render_template("mail.html", data=data)
        mail.send(msg)

        msgtome = Message(name, sender='ismailtosunnet@gmail.com',  # feedback mail for me
                          recipients=["itosun_99@hotmail.com"])

        msgtome.html = f"<h1>{name}</h1> <br> <h1>{email}</h1> <br> <p>{content}</p>"
        mail.send(msgtome)


@app.route("/contact", methods=["GET", "POST"])
def contact():
    data = webpageDB.fetch_languages(request.accept_languages.best_match(["en", "tr"]))

    class contactForm(Form):

        name = StringField(data["contact_form_name"],
                           [validators.Length(min=4, max=25, message=data["contact_form_name_error"])])
        email = StringField(data["contact_form_email"], [validators.Email(message=data["contact_form_email_error"])])
        content = TextAreaField(data["contact_form_content"],
                                [validators.Length(min=2, message=data["contact_form_content_error"])])

    navActive = navbarActive()
    navActive["contact"] = "active"

    form = contactForm(request.form)

    if request.method == "POST" and form.validate():
        try:
            name = form.name.data
            email = form.email.data
            content = form.content.data
            webpageDB.insertto_contact_form(name, email, content)

            threading.Thread(target=sendFeedbackMail, args=(data, name, email, content,)).start()

            # sendFeedbackMail(data, name, email,content)             #flash message
            flash("Mesajınız alındı", "success")
            return redirect(url_for("index"))
        except Exception as e:
            print("Exception", e)
            flash("Hata daha sonra tekrar deneyin", "danger")
            return redirect(url_for("index"))

    return render_template("contact.html", data=data, navActive=navActive, form=form)


@app.route("/apps")
def apps():
    data = webpageDB.fetch_languages(request.accept_languages.best_match(["en", "tr"]))
    appsData = webpageDB.fetch_apps(request.accept_languages.best_match(["de", "tr"]))
    print(appsData)

    navActive = navbarActive()
    navActive["apps"] = "has-dropdown active"

    return render_template("apps.html", data=data, navActive=navActive, appsData=appsData
                           )


@app.errorhandler(404)
def page_not_found(e):
    data = webpageDB.fetch_languages(request.accept_languages.best_match(["en", "tr"]))

    return render_template('404.html', navActive=None, data=data)


if __name__ == '__main__':
    app.run()
