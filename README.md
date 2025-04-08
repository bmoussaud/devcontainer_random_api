# Random Number API

A simple FastAPI application that generates random integers.

## Running the application

```bash
uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

## Usage

Send a GET request to `/random/{max_value}` where `max_value` is a non-negative integer.

Example:
```bash
curl http://localhost:8000/random/100
```

This will return a random number between 0 and 100.
