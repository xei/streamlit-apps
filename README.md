# streamlit-apps

This repository contains the source code of all web apps written in streamlit.io

## Run an app (here hello-world) using Docker
```bash
docker build -t hello-world:latest -f Dockerfile hello-world/
docker run -d --restart=unless-stopped -p 8501:8501 hello-world:latest
```
