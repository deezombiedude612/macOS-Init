# Reference: https://tecadmin.net/install-apache-macos-homebrew/

# Ensure Homebrew has been installed

# Step 1: Install Apache on macOS
sudo apachectl stop
sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist

brew install httpd
sudo brew services start httpd

# --------------------------------------------------------------------------------
# Step 2: Configure Apache
sudo nano /usr/local/etc/httpd/httpd.conf

# Find the line with
# Listen 8080
# and change it to
# Listen 80

# Add ServerName to suppress warning message when starting httpd
# ServerName localhost

# DocumentRoot "/Users/deezombiedude612/Sites/"
# <Directory "/Users/deezombiedude612/Sites/">
# ...
# 	AllowOverride All
# </Directory>

# DirectoryIndex sets the file that Apache will serve if a directory is requested.
# Add index.php
# <IfModule dir_module>
# 	DirectoryIndex index.php index.html
# </IfModule>

# Uncomment Rewrite Module (enable URL rewrite on Apache)
# LoadModule rewrite_module lib/httpd/modules/mod_rewrite.so

# --------------------------------------------------------------------------------
# Step 3: Install PHP
brew install php

sudo nano /usr/local/etc/httpd/httpd.conf
# Add the following to httpd.conf

# LoadModule php_module /usr/local/opt/php/lib/httpd/modules/libphp.so

# <FilesMatch \.php$>
#     SetHandler application/x-httpd-php
# </FilesMatch>

# php.ini and php-fpm.ini file can be found in:
# /usr/local/etc/php/8.0/

brew services restart php

# --------------------------------------------------------------------------------
# Step 4: Install MySQL
brew install mysql

mysql_secure_installation

mysql -u root -p

brew services start mysql

# --------------------------------------------------------------------------------
# Step 5: Install phpMyAdmin
brew install phpmyadmin

sudo nano /usr/local/etc/httpd/httpd.conf
# Add the following to httpd.conf

# Alias /phpmyadmin /usr/local/share/phpmyadmin
# <Directory /usr/local/share/phpmyadmin/>
# 		Options Indexes FollowSymLinks MultiViews
# 		AllowOverride All
# 		<IfModule mod_authz_core.c>
# 				Require all granted
# 		</IfModule>
# 		<IfModule !mod_authz_core.c>
# 				Order allow,deny
# 				Allow from all
# 		</IfModule>
# </Directory>

# Open phpmyadmin at localhost/phpmyadmin