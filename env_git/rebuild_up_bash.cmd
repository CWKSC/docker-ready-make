docker build --tag env_git .
docker compose up -d
docker exec -it env_git /bin/bash