FROM swaggerapi/swagger-ui:v3.52.5

ENV SWAGGER_JSON=/openapi.yaml
ENV SWAGGER_JSON_URL=openapi.yaml

COPY openapi.yaml /
