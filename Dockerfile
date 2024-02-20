FROM python:3.13.0a4-alpine3.18

COPY main.py /main.py
COPY requirements.txt /requirements.txt
COPY entrypoint.sh /entrypoint.sh

RUN pip install -r /requirements.txt
RUN chmod +x /requirements.txt

ENTRYPOINT ["/entrypoint.sh"]