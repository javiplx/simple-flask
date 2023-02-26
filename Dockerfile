FROM ubuntu:22.04

RUN apt-get update \
 && apt-get install -y apache2-bin python3-pip \
 && apt-get clean all

COPY pyproject.toml .
COPY app app
RUN pip install .

CMD ["python3", "-m", "app"]
