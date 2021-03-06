# bookers2-9
## DMM WEBCAMP 2ヶ月目応用課題

### 課題9 ユーザー間で1:1のチャットを実装しましょう
ActionCable用いて、チャットを作成
##### 実装する機能
###### コントローラ
chatコントローラを追加し、showアクションでチャットを行うこと
##### モデル
roomモデル, chatモデル, user_roomモデルを作成すること
* roomモデル: チャットルームの定義
* chatモデル: チャットの定義
* user_room: チャットルームとユーザーの関連付けを定義

## 使用言語
Ruby on Rails

## 使用方法
### テスト手順の自動化
gemを入れて、specファイルを移動して、テストを実行するコマンドを打つという手順をまとめたcheck.shというファイルを作成した
アプリケーションのルートディレクトリにおいて
bash check.sh
というコマンドを打つと最後まで自動で終了する
ディレクトリが野原のディレクトリにあっているため、自分で修正が必要

### 実行コマンド
bundle exec rspec spec/ --format documentation

### 注意
カラム名が違うとほとんどのテストに失敗してしまうが、このコマンドですべてのファイルの文字列を変更することができる
例はopinionというカラム名で作られていたため、それをすべてbodyというカラム名に変更した
find . -type f | xargs sed -i 's/opinion/body/g'

一回テストを試していると、テスト用のデータベースtest.sqlite3ができているため、カラム名を変更したのちに再びやる時は
rm db/test.sqlite3によって、ファイルを削除してから実行する


## 参照
[DMM WEBCAMP カリキュラム](https://web-camp.online/lesson/curriculums)
