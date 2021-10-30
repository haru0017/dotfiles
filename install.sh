#!/bin/bash

# 未定義の変数があれば終了
set -u

# 現在のディレクトリを取得して移動
THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR

echo "start setup..."
for f in .??*; do
  [ "$f" = ".git" ] && continue
  [ "$f" = ".gitconfig.local.template" ] && continue

  ln -snfv ${PWD}/"$f" ~/
done

cat << END

**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END
