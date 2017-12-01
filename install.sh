sudo add-apt-repository ppa:ondrej/php -y
echo "[Installed pp:ondrej/php]"

sudo apt-get update -y

echo "[NOTICE] Installing PHP 7 Packages"
sudo apt-get install php7.1-curl php7.1-dom php7.1-cli php7.1-dev php7.1-gd php7.1-intl php7.1-mcrypt php7.1-json php7.1-mysql php7.1-sqlite php7.1-opcache php7.1-bcmath php7.1-mbstring php7.1-soap php7.1-xml php7.1-zip -y


echo "[Updated apt]"
sudo apt-get install libapache2-mod-php7.1 -y

# Disable PHP 5 and enable PHP 7
echo "[NOTICE] Disabling PHP 5 and Enabling PHP 7"
sudo a2dismod php5 && sudo a2enmod php7.1

# Install mysql-server 5.7
sudo add-apt-repository ppa:ondrej/mysql-5.7
sudo apt-get update
sudo apt-get install mysql-5.7

sudo service apache2 restart


