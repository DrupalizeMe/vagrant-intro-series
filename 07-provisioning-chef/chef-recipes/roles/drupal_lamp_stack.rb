name "drupal_lamp_stack"
description "A LAMP + Memcached stack for Drupal with development tools."
run_list(
  "recipe[apt]",
  "role[apache2_mod_php]",
  "role[drupal_php_reqs]",
  "role[mysql_server]",
  "role[drupal_dev_tools]",
)
