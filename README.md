# docker-neo-node

Neo Node for Docker

## Configuration

* NEONODE_CHAIN_BOOTSTRAP - (if set with any value, it will initialize the /chain folder before running)
  Does nothing if the folder is already initialized

## Mounts

* /chain - mount the chain to persist between restats
* /opt/cache - if this folder contained a chain.acc.zip and you have set NEONODE_CHAIN_BOOTSTRAP it will use this
  file to initialize the /chain folder.

## Example

```shell
docker run -it --rm interlock/neo-node:latest
```
