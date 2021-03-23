FROM hashicorp/terraform:0.14.8

RUN apk add --no-cache bash python3 py-pip jq
RUN if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi

RUN pip install --upgrade pip awscli