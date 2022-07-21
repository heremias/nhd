composer config -g allow-plugins.composer/installers true
composer config -g allow-plugins.drupal/core-composer-scaffold true
composer config -g allow-plugins.drupal/core-project-message true
composer config -g allow-plugins.oomphinc/composer-installers-extender true
composer create-project drupal/recommended-project:9.4.3 drupal
ln -s /root/.composer/vendor/bin/drush /usr/local/bin/drush

composer global require drush/drush
cd drupal
rm -rf vendor/bin/drush
composer global update

composer install --no-interaction
composer require drush/drush
chmod 777 web/sites/default

cd web

drush site-install -y --db-url=sqlite://../drupal.sqlite
mv /var/www/.htaccess /var/www/drupal/web
chmod -R g+rw /var/www/drupal
chown -R :www-data /var/www/drupal
chmod -R 775 /var/www/drupal/drupal.sqlite

cd /var/www/drupal/web/sites/default
chmod 777 -R files
cd /var/www/drupal
drush uli

