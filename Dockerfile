FROM gcc:7.1
WORKDIR /app/
WORKDIR /app/
COPY . /app/
WORKDIR /app/build
RUN cmake ..
RUN make -j4
