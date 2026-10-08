FROM mcr.microsoft.com/devcontainers/base:ubuntu26.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends libsecret-tools ripgrep \
    && rm -rf /var/lib/apt/lists/*
