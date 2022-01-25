from dataBase import dataBase

from wtforms import Form, StringField, validators,TextAreaField





webpageDB = dataBase()

class contactForm(Form):
    data = webpageDB.fetch_languages()

    name = StringField(data["contact_form_name"], [validators.Length(min=4, max=25,message=data["contact_form_name_error"])])
    email = StringField(data["contact_form_email"], [validators.Email(message=data["contact_form_email_error"])])
    content = TextAreaField(data["contact_form_content"], [validators.Length(min=2,message=data["contact_form_content_error"])])
