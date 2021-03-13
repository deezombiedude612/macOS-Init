# Ensure Homebrew has been installed

brew install gcc
brew install g++

# Head over to /usr/local/bin. 
cd /usr/local/bin
ls

# Find gcc-<version_num_here>. From here, do the following (version 10 as of making this guide):
ln -s g++-10 g++
ln -s gcc-10 gcc

# Restart your Mac.