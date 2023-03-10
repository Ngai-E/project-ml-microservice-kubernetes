FROM python:3.7.3-stretch

WORKDIR /app

COPY app.py requirements.txt /app/
COPY model_data  /app/model_data/

# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

CMD [ "python", "app.py" ]

