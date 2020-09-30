FROM ubuntu:latest

USER root
RUN apt-get update -y
RUN apt-get install -y software-properties-common \
    python3 python3-pip python3-dev libffi-dev
RUN pip3 install 'buku[server]'

CMD ["bukuserver", "run", "--host", "0.0.0.0 ", "--port", "5001"]

