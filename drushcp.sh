cd drupal
drush cr

drush cex -y
cd /var/www/drupal/web/sites/default/files/config*/sync/
tar cvf config.tar *.*
mv config.tar /var/www/drupal
