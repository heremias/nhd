composer create-project drupal/recommended-project:9.2.1 drupal
ln -s /root/.composer/vendor/bin/drush /usr/local/bin/drush

composer global require drush/drush
cd drupal
rm -rf vendor/bin/drush
composer global update
composer install
composer require drush/drush
chmod 777 web/sites/default

cd web

drush site-install --db-url=sqlite://../drupal.sqlite
mv /var/www/.htaccess /var/www/drupal/web