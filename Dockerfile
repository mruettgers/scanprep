FROM python:3

COPY . /app
WORKDIR /app

RUN apt update -y
RUN apt install -y libzbar0
RUN pip3 install -r requirements.txt


ENTRYPOINT [ "python3", "scanprep/scanprep.py" ]