cd ..
docker build -t protofy/workspace . && docker-compose -f build.yml up
docker-compose -p protofy -f apps\admin-api\docker.yml -f apps\admin-api\docker.dev.yml -f apps\api\docker.yml -f apps\api\docker.dev.yml -f apps\next\docker.yml -f apps\next\docker.dev.yml -f apps\proxy\docker.yml -f apps\proxy\docker.dev.yml up -d && docker-scripts\docker-logs.bat