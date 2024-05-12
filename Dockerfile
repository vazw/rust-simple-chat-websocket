FROM debian:bookworm-slim
WORKDIR /app
RUN apt-get update && apt-get install -y openssl libssl3 ca-certificates && rm -rf /var/lib/apt/lists/*
COPY ./coppytrade-server /app/server
COPY ./site/ /app/site/
CMD ["./server"]
