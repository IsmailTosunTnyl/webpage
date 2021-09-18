from dataBase import dataBase
from dotenv import dotenv_values
from wtforms import Form, BooleanField, StringField, PasswordField, validators,TextAreaField


import email_validator

env = dotenv_values(".env")
webpageDB = dataBase(env["MYSQL_DB"])

class contactForm(Form):
    data = webpageDB.fetch_languages()

    name = StringField(data["contact_form_name"], [validators.Length(min=4, max=25,message=data["contact_form_name_error"])])
    email = StringField(data["contact_form_email"], [validators.Email(message=data["contact_form_email_error"])])
    content = TextAreaField(data["contact_form_content"], [validators.Length(min=2,message=data["contact_form_content_error"])])
