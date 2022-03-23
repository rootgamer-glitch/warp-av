FROM python:3-slim

# setup okteto message

COPY bashrc /root/.bashrc

WORKDIR /usr/src/app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY wp-plus.py wp-plus.py

EXPOSE 8080

CMD ["python3", "wp-plus.py" ]
