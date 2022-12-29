# Starting docker file.
FROM alpine:3.17.0

RUN apk add git && \
    apk add build-base && \
    apk add gcc

# Somewhere in this file, the following line must be included:
#COPY . C:\Users\Matta\Documents\MicahHWTest\Mattan_hw01-q5-application
#WORKDIR /Mattan_hw01-q5-application/src

COPY . /HelloWorld
WORKDIR /HelloWorld



#RUN git clone https://github.com/BillybobjonesFPV/Mattan_hw01-q5-application.git
RUN file="$(ls -1 /)" && echo $file


RUN g++ -o HelloWorld helloworld.cpp
#RUN g++ -o MyApp hw01-q5-application.cpp

CMD ["./HelloWorld"]