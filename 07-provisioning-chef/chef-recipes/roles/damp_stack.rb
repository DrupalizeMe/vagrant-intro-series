name "damp_stack"
description "A LAMP stack for Drupal with development tools, and relevant PHP libraries."
run_list(
  "role[lamp_stack]",
  "recipe[php::module_curl]",
  "recipe[php::module_gd]",
  "recipe[php::module_mysql]",
  "recipe[imagemagick]",
  "recipe[git]",
  "recipe[drush]",
)
