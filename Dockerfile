FROM public.ecr.aws/docker/library/python:3.10.4

ENV PYTHONFAULTHANDLER=1 \
  PYTHONUNBUFFERED=1 \
  PYTHONHASHSEED=random \
  PIP_NO_CACHE_DIR=off \
  PIP_DISABLE_PIP_VERSION_CHECK=on \
  PIP_DEFAULT_TIMEOUT=100 \
  POETRY_VERSION=1.2.2 \
  PYTHONPATH=/home/app

RUN apt update && pip install --upgrade pip

WORKDIR /home/app

ADD . /home/app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:80"]