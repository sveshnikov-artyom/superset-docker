FROM python:3.7.9
RUN pip3 install apache-superset
RUN sh -c 'mkdir /pythonpath/'
COPY docker/ /pythonpath/
RUN sh -c 'chmod -R a+x /pythonpath/'
