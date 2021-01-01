FROM gcc:7.1
WORKDIR /app/
COPY ./* ./
RUN gcc -o main main.cpp -lstdc++ -std=c++17
RUN chmod +x main
