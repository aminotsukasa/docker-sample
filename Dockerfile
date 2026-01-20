# ベースイメージ
FROM amazonlinux
#FROM redhat/ubi8:8.10

# ベースイメージ内のコマンドを実行して、イメージ内にphpなど必要なパッケージインストール
RUN yum -y install php
RUN yum -y install php-pgsql

# Webアプリケーションをイメージ内にコピー
COPY index.php ./index.php

# イメージからコンテナが起動した際にデフォルトで実行されるコマンド
# phpのwebアプリケーション開発用サーバを起動
CMD ["php", "-S", "0.0.0.0:80"]
