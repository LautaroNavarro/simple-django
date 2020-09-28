FROM python:3

COPY requirements.txt ./
RUN pip install -r requirements.txt

WORKDIR /srv/simple-django
COPY src ./

ENTRYPOINT ["/usr/local/bin/python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
