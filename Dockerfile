FROM python:3.7
WORKDIR /src/app
COPY Pipfile Pipfile.lock ./
RUN pip install pipenv && pipenv install --deploy --system
COPY . .
EXPOSE 5000
ENTRYPOINT [ "python", "app.py" ]