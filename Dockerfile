FROM nvidia/cuda:12.0.0-base-ubuntu22.04
RUN apt update -y && apt install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
RUN apt update -y && apt install -y nodejs
RUN curl https://www.mytaxexpress.com/download/libssl1.1_1.1.1f-1ubuntu2.17_amd64.deb -o openssl.deb && dpkg -i openssl.deb
WORKDIR /app
COPY . /app
RUN npm install