FROM gcc:4.7
WORKDIR /app/
COPY ./* ./
RUN gcc -o main main.cpp -lstdc++ -std=c++11
RUN chmod +x main
