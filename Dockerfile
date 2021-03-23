FROM hashicorp/terraform:0.14.8

RUN apk add --no-cache bash py-pip jq
RUN pip install --upgrade pip awscli