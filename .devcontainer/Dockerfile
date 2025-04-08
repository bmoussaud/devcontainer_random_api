FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye

# Install Vegeta
RUN wget https://github.com/tsenart/vegeta/releases/download/v12.11.1/vegeta_12.11.1_linux_amd64.tar.gz && \
    tar xf vegeta_12.11.1_linux_amd64.tar.gz && \
    mv vegeta /usr/local/bin/ && \
    rm vegeta_12.11.1_linux_amd64.tar.gz
