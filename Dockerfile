FROM debian

RUN apt update
RUN apt-get install -y g++

RUN apt-get install -y git

RUN mkdir cppTutorial && cd cppTutorial && git clone https://github.com/divy-works/cppTest.git

RUN cd cppTutorial/cppTest && g++ hello.cpp -o hello