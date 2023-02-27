FROM ubuntu:22.04

RUN apt-get update \
 && apt-get install -y apache2 libapache2-mod-wsgi-py3 python3-pip \
 && apt-get clean all

COPY pyproject.toml .
COPY app app
RUN pip install .

COPY flaskapp.wsgi /var/www/flaskapp/
COPY flaskapp.conf /etc/apache2/sites-available/000-default.conf

CMD ["apache2ctl", "-D", "FOREGROUND"]
