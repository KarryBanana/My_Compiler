FROM gcc:4.7
WORKDIR /app/
COPY ./* ./
RUN apt update && apt install gcc
RUN gcc main.cpp -o main
RUN chmod +x main