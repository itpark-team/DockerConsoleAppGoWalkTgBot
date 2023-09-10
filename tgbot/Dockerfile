FROM mcr.microsoft.com/dotnet/runtime:6.0

COPY ./data /root

WORKDIR /root

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.7.2/wait /wait
RUN chmod +x /wait