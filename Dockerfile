FROM python:3.7
WORKDIR /src/app
COPY . .
RUN pip install -r requirements.txt
RUN pip install six==1.16.0
EXPOSE 5000
ENTRYPOINT [ "python", "app.py" ]