# Ensure Homebrew has been installed

brew install gcc
brew install g++

# Check if gcc or g++ exists inside /usr/local/bin/
ls /usr/local/bin | grep gcc
ls /usr/local/bin | grep g++

# Make backups if found
cp -R /usr/local/bin/gcc /usr/local/bin/gcc.bak
cp -R /usr/local/bin/g++ /usr/local/bin/g++.bak

# Find gcc-<version_num_here>. From here, do the following (version 11 as of making this guide):
sudo ln -Fs $(which gcc-11) /usr/local/bin/gcc
sudo ln -Fs $(which g++-11) /usr/local/bin/g++

# It should work in a new Terminal window now.