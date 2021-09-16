from dataBase import dataBase
from dotenv import dotenv_values
from wtforms import Form, BooleanField, StringField, PasswordField, validators,TextAreaField


import email_validator

env = dotenv_values(".env")
webpageDB = dataBase(env["MYSQL_DB"])

class contactForm(Form):
    data = webpageDB.fetch_languages()

    name = StringField(data["contact_form_name"], [validators.Length(min=4, max=25)])
    email = StringField(data["contact_form_email"], [validators.Length(min=6, max=35)])
    content = TextAreaField(data["contact_form_content"], [validators.DataRequired()])
