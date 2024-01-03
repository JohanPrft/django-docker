FROM python:alpine3.19

WORKDIR /usr/src/app

# prevent Python from writing .pyc files
ENV PYTHONDONTWRITEBYTECODE 1
# ensure Python output is sent directly to the terminal
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY ./requirement.txt /usr/src/app/requirement.txt
RUN pip install -r /usr/src/app/requirement.txt

COPY ./entrypoint.sh /usr/src/app/entrypoint.sh
COPY . /usr/src/app/

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]