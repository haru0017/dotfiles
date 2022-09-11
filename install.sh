#!/bin/bash

set -u

THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR

# dotfiles
echo "start setup..."
for f in .??*; do
  [ "$f" = ".git" ] && continue
  [ "$f" = ".gitignore" ] && continue

  ln -snfv ${THIS_DIR}/"$f" ~/
done

# other config
ln -sf ${THIS_DIR}/fish/config.fish ~/.config/fish
ln -sf ${THIS_DIR}/fish/fish_plugins ~/.config/fish
ln -sf ${THIS_DIR}/karabiner.json ~/.config/karabiner/karabiner.json
 
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install packages and apps
brew bundle

# Set the default shell to fish
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish

# install fisher and packages
fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"
fish -c "fisher update"

cat << END

**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END
