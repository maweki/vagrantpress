class php7::install {

  exec { "install_php7":
    command =>
     "add-apt-repository ppa:ondrej/php -y\
      && apt-get update -y\
      && apt-get install -y\
        php7.4\
      && a2enmod proxy_fcgi setenvif\
      && a2enmod php7.4",
    user => "root",
    notify => Service['apache2'],
  }

}
