#FROM gcc:latest AS builder
FROM alpine:3.17.0 AS builder

RUN apk add git && \
    apk add build-base


RUN git clone https://github.com/UAH-IC-Design-Team/hw01-q5-application.git

WORKDIR /hw01-q5-application/src
RUN g++ -o MyScript hw01-q5-application.cpp
RUN rm -rf /hw01-q5-application/src/data


# here is our second stage
FROM alpine:3.17.0
RUN apk add libstdc++
COPY --from=builder /hw01-q5-application/src/MyScript ./

CMD ["./MyScript"]
