#!/bin/bash

CHAIN_URL=http://static.neo.org/client/chain.acc.zip

if [ -n "${NEONODE_CHAIN_BOOTSTRAP}" ]; then
  echo "Chain Bootstrap"
  if [ -f "/chain/CURRENT" ]; then
    echo "Chain already present, skipping"
  else
    echo "Obtaining Chain seed"
    if [ -f "/opt/cache/chain.acc.zip" ]; then
      echo "Chain seed found in /opt/cache"
      unzip /opt/cache/chain.acc.zip -d "/opt/neo-cli"
    else
      curl "${CHAIN_URL}" > /opt/cache/chain.acc.zip
      unzip /opt/cache/chain.acc.zip -d "/opt/neo-cli"
    fi
  fi
fi

dotnet neo-cli.dll /rpc