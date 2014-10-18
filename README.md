tty.js docker container
===
This Docker container is purposely built to be a web basted jumpstation for accessing vital infrastructure. Authentication can be handled by the configuraiton file but is not recommended. The recommended approach is to accomplish the authentication at the reverse proxy.

## Example Usage
```bash
docker pull nicholasvmoore/docker-ttyjs
docker run -d --publish 3000:3000 --name=ttyjs nicholasvmoore/docker-ttyjs
```