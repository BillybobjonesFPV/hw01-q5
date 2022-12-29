# Starting docker file.
FROM alpine:3.17.0

RUN apk add git && \
    #apk add gcc
    apk add build-base && \
    git clone https://github.com/UAH-IC-Design-Team/hw01-q5-application.git && \
    apk del git && \
    apk --purge del apk-tools

WORKDIR /hw01-q5-application/src

RUN g++ -o MyScript hw01-q5-application.cpp

CMD ["./MyScript"]