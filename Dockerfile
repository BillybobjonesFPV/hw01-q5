FROM gcc:4.9
COPY . C:\Users\Matta\Documents\MicahHWTest\hw01-q5\HelloWorld
WORKDIR C:\Users\Matta\Documents\MicahHWTest\hw01-q5\HelloWorld
RUN g++ -o HelloWorld helloworld.cpp
CMD ["./HelloWorld"]