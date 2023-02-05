FROM python:3.7.3-stretch

WORKDIR /app

COPY app.py requirements.txt /app/
COPY model_data  /app/model_data/

# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

RUN wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
    chmod +x /bin/hadolint    

EXPOSE 80

CMD [ "python", "app.py" ]

