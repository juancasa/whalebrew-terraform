FROM golang:alpine
LABEL maintainer "Juan A. Casanas <juan@macondo.info>"
LABEL io.whalebrew.name terraform
LABEL io.whalebrew.config.volumes '["~/.aws:/.aws:ro"]'
ADD terraform /bin/terraform
RUN mkdir -p /.terraform.d/plugins
ADD terraform-provider-aws_v1.60.0 /.terraform.d/plugins/terraform-provider-aws_v1.60.0
ENTRYPOINT [ "terraform" ]
