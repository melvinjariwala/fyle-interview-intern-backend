## Installation (The Normal Way)

1. Fork this repository to your github account
2. Clone the forked repository and proceed with steps mentioned below

### Install requirements

```
virtualenv env --python=python3.10
source env/bin/activate
pip install -r requirements.txt
```

### Reset DB

```
export FLASK_APP=core/server.py
rm core/store.sqlite3
flask db upgrade -d core/migrations/
```

### Start Server

```
bash run.sh
```

### Run Tests

```
pytest -vvv -s tests/

# for test coverage report
# pytest --cov
# open htmlcov/index.html
```

## Installation (With Docker)

1. Fork this repository to your github account
2. Clone the forked repository and proceed with steps mentioned below

### Build the Docker Image

```
docker compose build
```

### Start the Server

```
docker compose up
```

### Run Tests in Docker

To run the tests inside the Docker environment, use the following command:

```
docker compose run test
```

This will execute the tests inside a Docker container.

### Alternatively, Run Tests with Coverage Report in Docker

To run the tests and generate a coverage report inside the Docker environment, use the following command:

```
docker compose run test-coverage
```

This will execute the tests and generate a coverage report.

**That's it! You are now all set to use the backend application and run tests within a Docker environment.**
