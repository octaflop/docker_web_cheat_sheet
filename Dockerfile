FROM python:3.7
COPY . /ctx
WORKDIR ctx
RUN python -m pip install -r requirements.txt
EXPOSE 5000
ENV FLASK_APP app/hello.py
CMD flask run
