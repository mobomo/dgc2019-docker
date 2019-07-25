$PARAMS=""

foreach ($PARAM in $args)
{
    $PARAMS="$PARAMS `"$PARAM`""
}

docker exec -it php sh -c "/drupal/vendor/bin/drupal --root=/drupal/web $PARAMS"
