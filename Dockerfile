FROM hashicorp/terraform:latest
LABEL maintainer "Juan A. Casanas <juan@macondo.info>"
LABEL io.whalebrew.name terraform
LABEL io.whalebrew.config.volumes '["~/.aws:/.aws:ro"]'
ENTRYPOINT [ "terraform" ]
