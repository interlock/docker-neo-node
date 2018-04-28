#!/bin/bash

if [ -n "${NEONODE_CHAIN_BOOTSTRAP}" ]; then
  echo "Chain Bootstrap"
  if [ -f "/chain/CURRENT" ]; then
    echo "Chain already present, skipping"
  else
    curl 
  fi
fi