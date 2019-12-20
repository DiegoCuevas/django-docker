FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY manage.py requirements.txt /code/
RUN pip3 install -r requirements.txt
# RUN apt-get -y update; apt-get -y install gnupg2 wget ca-certificates rpl pwgen gdal-bin

# RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ ${IMAGE_VERSION}-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
# RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc -O- | apt-key add -

# RUN apt-get update; apt-get install -y postgresql-11-postgis-2.5

COPY . /code/
# EXPOSE 8000