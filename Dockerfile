FROM gcc:latest

RUN apk add git
RUN git clone https://github.com/UAH-IC-Design-Team/hw01-q5-application.git

RUN rm -rf /hw01-q5-application/src/data
WORKDIR /hw01-q5-application/src
RUN g++ -o MyScript hw01-q5-application.cpp


# here is our second stage
FROM alpine:3.17.0
COPY --from=builder /hw01-q5-application/src ./
=======
