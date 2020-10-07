FROM gcc:4.7
WORKDIR /app/
COPY ./* ./
RUN gcc main.cpp -o main
RUN chmod +x main
