# dammit Xcode.
xcode-select --install

# Install Homebrew!
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Homebrew maintenance
brew doctor
brew update

brew install httpd
brew install mysql
brew install php
brew install phpmyadmin
brew install postgresql

brew install ant
brew install autopep8
brew install bash
brew install composer
brew install dart
brew install gcc
brew install gdb
brew install gdbm
brew install gfortran
brew install git
brew install gradle
brew install maven
brew install mongodb
brew install pipenv
brew install pyvenv
brew install pylint
brew install python
brew install python@2
brew install qt
brew install r
brew install sass
brew install sqlite
brew install tree
brew install zsh
brew install zsh-completions

# Cask
brew cask install anaconda
brew cask install android-studio
brew cask install adoptopenjdk
brew cask install adoptopenjdk8
brew cask install android-ndk
brew cask install android-sdk
brew cask install dotnet
brew cask install gfortran
brew cask install github
brew cask install intellij-idea
brew cask install iterm2
brew cask install java
brew cask install mactex
brew cask install mono-mdk
brew cask install mysqlworkbench
brew cask install opera
brew cask install rstudio
brew cask install sublime-text
brew cask install texstudio
brew cask install visual-studio
brew cask install visual-studio-code
brew cask install xamarin

# Frequent applications
brew cask install 4k-video-downloader
brew cask install 4k-video-to-mp3
brew cask install 4k-youtube-to-mp3
brew cask install coconutbattery
brew cask install firefox
brew cask install google-chrome
brew cask install microsoft-office
brew cask install nordvpn
brew cask install skype-for-businesss
brew cask install vlc

# aliases (watch out for those with version numbers!)
export ANT_HOME="/usr/local/Cellar/ant/1.10.7"
export MAVEN_HOME="/usr/local/Cellar/maven/3.6.3"
export GRADLE_HOME="/usr/local/Cellar/gradle/6.0.1"
export ANDROID_HOME="/usr/local/share/android-sdk"
export ANDROID_NDK_HOME="/usr/local/share/android-ndk"

# Homebrew sbin
export PATH="/usr/local/sbin:$PATH"

# Flutter
export PATH="$PATH:$HOME/Developer/flutter/bin"

# run ZSH by default
sudo echo "$(which zsh)" >> /etc/shells
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)

# Pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# setting up MySQL for the first time:
mysql_secure_installation

# install Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# upgrade Oh My ZSH
upgrade_oh_my_zsh

# installing NVM (check https://github.com/nvm-sh/nvm for latest link)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

# install node
nvm install stable
# IMPORTANT: Open VSCode, hit [cmd]+[shift]+[p], select "Shell Command : Install 'code' command in PATH"
npm install -g tldr
npm install -g typescript
npm install -g @vue/cli
npm install -g vuepress
npm install -g @angular/cli
npm install -g eslint

# requires vs-extensions.txt, installs VS Code Extensions
while read line; do code --install-extension "$line"; done < vs-extensions.txt

# (info) VS Code Extensions management
code --list-extensions
code --install-extension {extension-id}
code --uninstall-extension {extension-id}
code --disable-extensions
