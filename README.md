# Gitlab Runner

This is a Gitlab Runner docker image with docker and helm installed.

## Usage

```bash
docker compose up
docker exec -it gitlab-ci-runner \
gitlab-runner exec shell --docker-privileged build-docker-image
```

There is an example `config.toml` file in the root directory.
