FROM alpine:3
RUN apk --update --no-cache add bash libxml2-utils
COPY readmavenpom-action.sh /readmavenpom-action.sh
ENTRYPOINT ["/readmavenpom-action.sh"]