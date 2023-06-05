#!/bin/bash

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> ~/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)

# install packages and apps
brew bundle

set -u

THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR

# dotfiles
echo "start setup..."
for f in .??*; do
  [ "$f" = ".git" ] && continue

  ln -snfv ${THIS_DIR}/${f} ~/
done

# other config
ln -sf ${THIS_DIR}/karabiner.json ~/.config/karabiner/karabiner.json

# terminal settings
cd
touch .hushlogin

cat << END

**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END
