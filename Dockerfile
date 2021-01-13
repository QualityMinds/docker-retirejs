FROM node:14.15.2-alpine3.12

ARG RETIRE_VERSION=2.2.4
ARG BUILD_DATE

LABEL org.label-schema.build-date=${BUILD_DATE} \
org.label-schema.schema-version="1.0"

RUN yarn global add retire@2.2.4
RUN apk add curl

WORKDIR /app

ENTRYPOINT ["retire"] 
