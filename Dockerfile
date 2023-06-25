FROM public.ecr.aws/docker/library/python:slim-buster

LABEL Description="This image is usable to setup a Streamlit web app"
LABEL maintainer="Hamidreza Hosseinkhani <hamidreza@hosseinkhani.me>"

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

ENV STREAMLIT_BROWSER_GATHER_USAGE_STATS=false

WORKDIR /app

COPY requirements.txt .
RUN python -m pip install -r requirements.txt

COPY . .

RUN adduser -u 5678 --disabled-password --gecos "" appuser && chown -R appuser /app
USER appuser

EXPOSE 8501
ENTRYPOINT ["streamlit", "run"]
CMD ["app.py"]
