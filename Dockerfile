FROM microsoft/dotnet:2-runtime

ENV NEO_VERSION=2.7.1
ENV NEO_DOWNLOAD_URL=https://github.com/neo-project/neo-cli/releases/download/v$NEO_VERSION/neo-cli-ubuntu.16.04-x64.zip


# neo-cli deps
RUN apt-get update && \
apt-get install -y --no-install-recommends unzip curl libleveldb-dev sqlite3 libsqlite3-dev libunwind8-dev && \
rm -rf /var/lib/apt/lists/*

RUN curl -SL $NEO_DOWNLOAD_URL --output neo-cli.zip && \
install -d /opt/neo-cli && \
unzip -d /opt/neo-cli neo-cli.zip

WORKDIR /opt/neo-cli

CMD ["dotnet", "neo-cli.dll", "/rpc"]