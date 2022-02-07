import os

from flask import Flask, render_template, request, url_for, redirect, flash
from wtforms import Form, StringField, validators, TextAreaField
from dotenv import dotenv_values

from dataBaseSQL import DataBaseSQL

import threading

from flask_mail import Mail, Message

env = dotenv_values(".env")

app = Flask(__name__)
app.debug = True

app.config['MAIL_SERVER'] = 'smtp.gmail.com'
app.config['MAIL_PORT'] = 465
app.config['MAIL_USERNAME'] = os.environ.get("MAIL_USERNAME")
app.config['MAIL_PASSWORD'] = os.environ.get("MAIL_PASSWORD")
app.config['MAIL_USE_TLS'] = False
app.config['MAIL_USE_SSL'] = True
app.config['SECRET_KEY'] = 'any string works here'
mail = Mail(app)

# webpageDB = dataBase() old dynamoDB instance
webpageDBSQL = DataBaseSQL()


def navbarActive():
    navActive = {"home": "", "about": "", "contact": "", "apps": ""}
    return navActive


@app.route('/')
def index():
    data = webpageDBSQL.get_index_values(request.accept_languages.best_match(["en", "tr"]))

    navActive = navbarActive()
    navActive["home"] = "active"

    return render_template("index.html", data=data[0], navActive=navActive, index_header_list=data[1])


@app.route("/about")
def about():
    data = webpageDBSQL.get_about_values(request.accept_languages.best_match(["en", "tr"]))
    navActive = navbarActive()
    navActive["about"] = "active"

    return render_template("about.html", data=data, navActive=navActive)


def sendFeedbackMail(data, name, email, content):
    msg = Message(data["mail_subject"], sender='ismailtosunnet@gmail.com',
                  recipients=[email, os.environ.get("MAIL_SECOND")])  # feedback mail for user
    data["mail_subtitle"] = data["mail_appeal"] + " " + name + " " + data["mail_subtitle"]
    with app.app_context():
        msg.html = render_template("mail.html", data=data)
        mail.send(msg)

        msgtome = Message(name, sender='ismailtosunnet@gmail.com',  # feedback mail for me
                          recipients=[os.environ.get("MAIL_SECOND")])

        msgtome.html = f"<h1>{name}</h1> <br> <h1>{email}</h1> <br> <p>{content}</p>"
        mail.send(msgtome)


@app.route("/contact", methods=["GET", "POST"])
def contact():
    data = webpageDBSQL.get_contact_values(request.accept_languages.best_match(["en", "tr"]))

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
            webpageDBSQL.insert_into_formtable(name, email, content)

            threading.Thread(target=sendFeedbackMail, args=(data, name, email, content,)).start()

            # sendFeedbackMail(data, name, email,content)             #flash message
            flash(data["about_flash_success"], "success")
            return redirect(url_for("index"))
        except Exception as e:
            print("Exception", e)
            flash(data["about_flash_failure"], "danger")
            return redirect(url_for("index"))

    return render_template("contact.html", data=data, navActive=navActive, form=form)


@app.route("/apps")
def apps():
    data = webpageDBSQL.get_myapps_values(request.accept_languages.best_match(["en","tr"]))
    appsData = data[1]
    data = data[0]

    navActive = navbarActive()
    navActive["apps"] = "active"

    return render_template("apps.html", data=data, navActive=navActive, appsData=appsData
                           )


@app.errorhandler(404)
def page_not_found(e):
    data = webpageDBSQL.get_404_values(request.accept_languages.best_match(["en", "tr"]))

    return render_template('404.html', navActive=None, data=data)

@app.route("/soon")
def comming_soon():
    data = webpageDBSQL.get_common_values(request.accept_languages.best_match(["en", "tr"]))

    return render_template("soon.html",navActive=None,data=data)


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)
