from wtforms import Form , StringField , validators , TextAreaField
import email_validator

class contactForm(Form):
    name = StringField("isim",validators=[validators.length(min=3,max=50)],)
    email = StringField("Email",validators=[validators.Email(message="geçerli email adresi girmeniz gerekli")])
    content = TextAreaField("icerik",validators=[validators.length(min=3)])