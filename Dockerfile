FROM debian:11.4-slim

LABEL AUTHOR="dx-academy"

ARG TERRAFORM_VERSION=1.2.7

RUN apt-get update \
    && apt-get install -y gnupg software-properties-common curl \
    && curl https://apt.releases.hashicorp.com/gpg | \
            gpg --dearmor | \
            tee /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    && gpg --no-default-keyring \
           --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
           --fingerprint \
    && echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
            https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
            tee /etc/apt/sources.list.d/hashicorp.list \
    && apt update \
    && apt-get install terraform=${TERRAFORM_VERSION} \
    && rm -rf /var/lib/apt/lists/*

CMD [ "terraform", "-version"]