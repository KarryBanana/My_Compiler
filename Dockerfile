FROM gcc:4.7
WORKDIR /app/
COPY ./* ./
RUN gcc main.cpp -o main -std=c++11
RUN chmod +x main
