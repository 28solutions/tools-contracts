FROM swaggerapi/swagger-ui:v5.17.14

USER 101

ENV SWAGGER_JSON=/openapi.yaml
ENV SWAGGER_JSON_URL=openapi.yaml

COPY openapi.yaml /
