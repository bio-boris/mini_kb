sudo chmod 777 /etc/hosts
echo -e '127.0.0.1 nginx\n' >> /etc/hosts
echo -e '127.0.0.1 ci-mongo\n' >> /etc/hosts
cat /etc/hosts
sudo apt-get -qq update