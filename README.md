# Random Number API

A simple FastAPI application that generates random integers.

[![Open in Dev Containers](https://img.shields.io/static/v1?label=Dev%20Containers&message=Open&color=blue)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/bmoussaud/devcontainer_random_api)

## Development with DevContainer

This project includes a devcontainer configuration for Visual Studio Code. To use it:

1. Install the "Remote - Containers" extension in VS Code
2. Open the project in VS Code
3. Click the green button in the bottom-left corner or press `F1` and select "Remote-Containers: Reopen in Container"
4. VS Code will build and start the development container

The devcontainer comes with all necessary dependencies pre-installed.

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

## Load Testing

The project includes a `load_test.sh` script that uses Vegeta to perform load testing on the API. Run the script to test the API's performance under load:

```bash
./load_test.sh
```

This will send multiple HTTP requests to test the API's response time and throughput.
