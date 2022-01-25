FROM python:3.10.1-alpine3.15

COPY static /opt/source-code/static
COPY templates /opt/source-code/templates
COPY __init__.py /opt/source-code/
COPY forms.py /opt/source-code/
COPY dataBase.py /opt/source-code/
COPY requirements.txt /opt/source-code/


RUN pip install -r /opt/source-code/requirements.txt
CMD gunicorn --bind 0.0.0.0:5000 __init__:app

