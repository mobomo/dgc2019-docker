$PARAMS=""

foreach ($PARAM in $args)
{
    $PARAMS="$PARAMS `"$PARAM`""
}

docker exec -it php sh -c "/drupal/vendor/bin/drush --root=/drupal/web $PARAMS"