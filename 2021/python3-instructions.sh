# Reference: https://opensource.com/article/19/5/python-3-default-mac

# Install Python using pyenv
brew install pyenv

# Install Python <latest version num here> using pyenv
pyenv install 3.9.1		# find latest version first

# Set global default
pyenv global 3.9.1
pyenv version 			# to verify

# Important step
$ echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

