# Starting docker file.
FROM alpine:3.17.0

RUN apk add git && \
    apk add build-base && \
    apk add gcc

RUN git clone https://github.com/BillybobjonesFPV/Mattan_hw01-q5-application.git
#RUN git clone https://github.com/UAH-IC-Design-Team/hw01-q5-application.git


WORKDIR /Mattan_hw01-q5-application/src


RUN g++ -o MyScript hw01-q5-application.cpp

CMD ["./MyScript"]