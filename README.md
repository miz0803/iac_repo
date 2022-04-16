# iac_repo
This repository managed Code for studying IaC

## About dokcer file 

https://blog.codecamp.jp/docker-file-how-to

- FROM：ベース（親）画像を指定します。
- LABEL：メタデータを提供します。 メンテナ情報を含めるのに良い場所です。
- ENV：永続的な環境変数を設定します。
- RUN：コマンドを実行してイメージレイヤを作成します。 パッケージをコンテナにインストールするために使用されます。
- COPY：ファイルとディレクトリをコンテナにコピーします。
- ADD：ファイルとディレクトリをコンテナにコピーします。 ローカルの.tarファイルをアンパックできます。
- CMD：実行中のコンテナにコマンドと引数を提供します。 パラメータは上書きできます。 CMDは1つだけです。
- WORKDIR：あとに続く説明の作業ディレクトリを設定します。
- ARG：ビルド時にDockerに渡す変数を定義します。
- ENTRYPOINT：実行中のコンテナにコマンドと引数を提供します。 引数は存続します。
- EXPOSE：ポートを公開します。
- VOLUME：永続データにアクセスして保存するためのディレクトリマウントポイントを作成します。


## git init setting

#### require
$ git config --global user.name 'username'
$ git config --global user.email 'username@example.com'

#### any
$ git config --global core.editor 'code --wait'
$ git config --global merge.tool 'code --wait "$MERGED"'
$ git config --global push.default simple
$ git config --global pull.rebase false
$ git config --global core.quotepath false
