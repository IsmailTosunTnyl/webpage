import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from flask import Flask, render_template
from dotenv import dotenv_values

import smtplib
env = dotenv_values(".env")


gmail_user = 'ismailtosunnet@gmail.com'
gmail_password = env["MAIL_PASSWORD"]

msg = MIMEMultipart('alternative')
#html =open("mailtemplata/mail.html",encoding="UTF-8")
html = render_template("mailtemplata/mail.html")
part2 = MIMEText(html.read(), 'html')
msg.attach(part2)



sent_from = gmail_user
to = ['ismailtosuntnyl@gmail.com', 'ismail19991999@gmail.com']
subject = 'Lorem ipsum dolor sit amet'
body = 'consectetur adipiscing elit'



try:
    smtp_server = smtplib.SMTP_SSL('smtp.gmail.com', 465)
    smtp_server.ehlo()
    smtp_server.login(gmail_user, gmail_password)
    smtp_server.sendmail(sent_from, to, msg.as_string())
    smtp_server.close()
    print ("Email sent successfully!")
except Exception as ex:
    print ("Something went wrong….",ex)