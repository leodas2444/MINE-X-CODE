#!/usr/bin/env bash

clear
echo "===================================="
echo "      MINE X | AUTO PANEL SETUP"
echo "===================================="
echo ""
echo "1) Install Pterodactyl Panel"
echo "2) Exit"
echo ""

read -p "Select option: " option

if [ "$option" != "1" ]; then
    echo "Exiting..."
    exit
fi

echo ""
read -p "Enter your domain (example: panel.example.com): " DOMAIN
read -p "Enter your admin email: " EMAIL

echo ""
echo "Installing dependencies..."
apt update && apt upgrade -y
apt install -y curl sudo nginx mariadb-server redis-server software-properties-common

echo "Installing PHP..."
add-apt-repository ppa:ondrej/php -y
apt update
apt install -y php8.2 php8.2-cli php8.2-gd php8.2-mysql php8.2-pdo php8.2-mbstring php8.2-tokenizer php8.2-bcmath php8.2-xml php8.2-fpm php8.2-curl php8.2-zip unzip git

echo "Downloading Pterodactyl Panel..."
mkdir -p /var/www/pterodactyl
cd /var/www/pterodactyl

curl -Lo panel.tar.gz https://github.com/pterodactyl/panel/releases/latest/download/panel.tar.gz
tar -xzvf panel.tar.gz
chmod -R 755 storage/* bootstrap/cache/

echo "Installing composer..."
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

composer install --no-dev --optimize-autoloader

cp .env.example .env
php artisan key:generate --force

echo ""
echo "Configuring Nginx..."

cat <<EOF > /etc/nginx/sites-available/pterodactyl.conf
server {
    listen 80;
    server_name $DOMAIN;

    root /var/www/pterodactyl/public;
    index index.php;

    location / {
        try_files \$uri \$uri/ /index.php?\$query_string;
    }

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php8.2-fpm.sock;
    }
}
EOF

ln -s /etc/nginx/sites-available/pterodactyl.conf /etc/nginx/sites-enabled/pterodactyl.conf

nginx -t
systemctl restart nginx

echo ""
echo "Installing SSL..."
apt install certbot python3-certbot-nginx -y
certbot --nginx -d $DOMAIN --non-interactive --agree-tos -m $EMAIL

echo ""
echo "===================================="
echo "Panel Installed Successfully"
echo "Open: https://$DOMAIN"
echo "===================================="
