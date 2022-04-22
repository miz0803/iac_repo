# iac_repo
This repository managed Code for studying IaC
# devcontainer.json　
[reference](https://code.visualstudio.com/docs/remote/devcontainerjson-reference)
# local環境構築手順
- git clone
- コンテナビルド、イメージ作成
```
docker image build . -t [CONTAINER_NAME]
```
- コンテナ起動
```
docker run -it -d -p [HOST_PORT]:[CONTAINER_PORT] -v [/path/to/local-host/mount-point]:[/path/to/container/mount-point] --name [[CONTAINER_NAME]] [IMAGE_ID]
```
- コンテナログイン
```
docker exec -it [CONTAINER_ID] bash
```
- python web サーバー起動
```
python3 manage.py runserver [CONTAINER_IP]:[CONTAINER_PORT]
```