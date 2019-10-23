FROM python:3.7-slim-buster

RUN pip install --no-cache-dir torch==1.3.0+cpu -f https://download.pytorch.org/whl/torch_stable.html

RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential\
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir allennlp  \
    && apt-get purge -y --auto-remove build-essential 

CMD ["/usr/local/bin/allennlp"]
