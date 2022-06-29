FROM python:3.7-slim

RUN pip install \
    psycopg2-binary==2.9.3 \
    faker==13.3.2 \
    typing \
    pickle5 \
    contextlib3

RUN mkdir -p /opt/datagenerator

COPY ./fake_data_generator.py /opt/datagenerator/

WORKDIR /opt/datagenerator/

CMD [ "python" , "./fake_data_generator.py"]

