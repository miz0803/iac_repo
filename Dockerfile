# ベースイメージの選択
FROM python:3.10
# コンテナ内実行ユーザーの指定
USER root

# 環境変数
ENV PYTHONUNBUFFERED 1

# ベースイメージに対してコマンドを実行
COPY requirements.txt /
RUN pip install -r requirements.txt
RUN mkdir -p /root/src
WORKDIR /root/src
