docker build --tag env_gradle_kotlin .
docker compose up -d
docker exec -it env_gradle_kotlin /bin/bash