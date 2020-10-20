FROM python:3.7

WORKDIR /srv/simple-django

COPY ./requirements.txt ./requirements.txt

RUN pip install -r ./requirements.txt

COPY ./src/ .

ENTRYPOINT ["python", "manage.py"]

CMD ["runserver", "0.0.0.0:8000"]
