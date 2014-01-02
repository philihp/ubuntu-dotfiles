#!/bin/sh

rm ~/.profile

for name in *; do
  target="$HOME/.$name"
  if [ -e "$target" ]; then
    echo $target
    if [ ! -L "$target" ]; then
      echo "WARNING: $target exists but is not a symlink."
    fi
  else
    if [ "$name" != 'install.sh' ] && [ "$name" != 'README.md' ] && [ "$name" != 'LICENSE' ]; then
      echo "Creating $target"
      ln -s "$PWD/$name" "$target"
    fi
  fi
done

sudo apt-add-repository -y ppa:webupd8team/sublime-text-2
sudo apt-get -y update
sudo apt-get -y install sublime-text
sudo apt-get -y install default-jre scala
sudo apt-get -y install unzip

