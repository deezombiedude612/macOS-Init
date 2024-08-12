# Reference: https://k0nze.dev/posts/install-pyenv-venv-vscode/#macos

# Xcode Command Line Tools
xcode-select --install

# Install Homebrew!
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Homebrew maintenance
brew doctor
brew cleanup
brew update

# Install required libraries
brew install openssl readline sqlite3 xz zlib

# Install `pyenv`
brew install pyenv

# Install `python-tk` for IDLE
brew install python-tk

# Add `pyenv` to $PATH and start `pyenv` when new Terminal is opened
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init --path)"' >> ~/.zshrc

# View Python versions available to install
pyenv install -l

# Install Python using pyenv
env PYTHON_CONFIGURE_OPTS="--enable-shared" pyenv install [PYTHON_VERSION]
# pyenv install [PYTHON_VERSION]

# View installed Python versions
pyenv versions

# View currently active Python version in shell
pyenv version

# Set default Python version globally
pyenv global [PYTHON_VERSION]

# Set local Python version in current workspace directory
pyenv local [PYTHON_VERSION]

# Set Python version for current terminal session
pyenv shell [PYTHON_VERSION]

# Run IDLE
idle
