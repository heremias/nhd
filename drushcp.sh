drush sql:dump --result-file=../nhy.sql
drush cex
cd /var/www/drupal/web/sites/default/files/config*/sync/
tar cvf config.tar *.*
mv config.tar /var/www/drupal