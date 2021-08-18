FROM python:3.9.6-alpine

#Copy my sourcecode into de container
COPY . /app
WORKDIR /app

# install dependencies. And prepare the flask entrypoint
RUN python setup.py install

#create a non root user
RUN adduser --disabled-password app && chown -R app /app
USER app

#Indicates what ports is the container going to be listening in. 
EXPOSE 5000

#Only needed if run with flask webserver
#ENV FLASK_APP=hello
#ENTRYPOINT ["flask","run"] # if running with flask webserver

#gunicorn mode
ENTRYPOINT ["gunicorn","--bind", "0.0.0.0:5000","wsgi:handler"]

