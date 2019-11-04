FROM debian

RUN apt update
RUN apt-get install -y g++

RUN apt-get install -y git

RUN mkdir cppTutorial && cd cppTutorial && git clone https://github.com/divy-works/cppTest.git

RUN cd cppTutorial/cppTest && g++ hello.cpp -o hello # compile hello executable from hello.cpp

RUN cd cppTutorial/cppTest && g++ -c hello.cpp #compile hello.o file

RUN cd cppTutorial/cppTest && ar rvs hello.a hello.o #compile static library

RUN cd cppTutorial/cppTest && g++ -fPIC hello.cpp -shared -o hello.so #compile shared object/dynamic link library