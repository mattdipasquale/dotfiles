if [[ $# -eq 0 ]]; then
  echo 'usage: init.bash source_dir'
  exit 1
fi

ln -sf "$1/bash_profile" ~/.bash_profile
ln -sf "$1/bash_profile_private.bash" ~/.bash_profile_private
ln -sf "$1/gitconfig" ~/.gitconfig
ln -sf "$1/vimrc" ~/.vimrc
