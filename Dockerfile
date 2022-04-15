FROM python:3.8

RUN mkdir -p /code
## Dockerfileやdocker-compose.ymlを使う時、COPYコマンドは現在のコンテキスト(たぶんDoclerfileが置いてあるところ)より上の階層を見ることができない
## そのため.devcontainerディレクトリ内にDockerfileを置くと、リポジトリ直下にあるrequirements.txtを見れずにエラーになる
## .devcontainerディレクトリ内にDockerfile置いていたからエラーが出ていたため、Dockerfileをリポジトリ直下に移動し、jsonの方のパスに../と指定した
## devcontainer.jsonはVSC用のファイルだから階層とか関係なさそう。dockerFileプロパティのパスで[../]を使ってもビルドが通る
## だからたぶんDockerfileとかdocker-compose.ymlはリポジトリ直下においたほうが全階層見れるので良いはず。
COPY requirements.txt /code
WORKDIR /code
RUN pip install -r requirements.txt