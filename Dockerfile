FROM python:3.7.6-slim-buster

RUN apt-get -y update && apt-get -y install git build-essential --no-install-recommends && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*

RUN python -mpip install --user --upgrade git+https://github.com/folkengine/redeal

RUN apt-get purge -y git build-essential

# cd ENTRYPOINT ["/root/.local/bin/redeal"]