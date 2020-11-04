# FROM ubuntu:latest
ENV COLOR "red"
RUN yum install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
# COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

# RUN pip install -r requirements.txt
RUN pip install Flask

COPY . /app

EXPOSE 8080
ENTRYPOINT [ "python" ]

CMD [ "app.py" ]