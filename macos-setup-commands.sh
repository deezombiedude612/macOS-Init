# dammit Xcode.
xcode-select --install

# Install Homebrew!
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Homebrew maintenance
brew doctor
brew cleanup
brew update

# for localhost server
brew install httpd
brew install mysql
brew install php
brew install phpmyadmin
brew install postgresql

brew install ant
brew install autopep8
brew install bash
brew install composer
brew install curl
brew install curl-openssl
brew install dart
brew install gcc
brew install gdb
brew install gdbm
brew install gfortran
brew install git
brew install gradle
brew install make
brew install maven
brew install mongodb
brew install pipenv
brew install pyenv
brew install pylint
brew install python
brew install python@2
brew install qt
brew install r
brew install sass
brew install sqlite
brew install tree
brew install vim
brew install zsh
brew install zsh-completions

# Casks
# brew install adoptopenjdk8
brew install anaconda
brew install android-ndk
brew install android-sdk
brew install dotnet
brew install gfortran
brew install intex-haxm
# brew install java
brew install mactex
brew install mono-mdk
brew install openjdk@8    # Java JDK 8
brew install openjdk@11   # Java JDK 11 LTS

# Frequent applications
brew install 4k-video-downloader
brew install 4k-video-to-mp3
brew install 4k-youtube-to-mp3
brew install android-studio
brew install coconutbattery
brew install discord
brew install firefox
brew install github
brew install google-chrome
brew install intellij-idea
brew install iterm2
brew install mendeley-desktop
brew install mendeley-reference-manager
# brew install microsoft-office
brew install mysqlworkbench
# brew install nordvpn
brew install opera
brew install postman
brew install rstudio
brew install skype
# brew install skype-for-businesss
brew install sublime-text
# brew install texstudio
# brew install visual-studio
brew install visual-studio-code
brew install vlc
# brew install xamarin

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
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# install node
nvm install stable
# IMPORTANT: Open VSCode, hit [cmd]+[shift]+[p], select "Shell Command : Install 'code' command in PATH"
npm install -g tldr
npm install -g typescript
npm install -g @vue/cli
npm install -g vuepress
npm install -g @angular/cli
npm install -g eslint
npm install -g sass

# requires vs-extensions.txt, installs VS Code Extensions
while read line; do code --install-extension "$line"; done < vs-extensions.txt

# (info) VS Code Extensions management
code --list-extensions
code --install-extension {extension-id}
code --uninstall-extension {extension-id}
code --disable-extensions
