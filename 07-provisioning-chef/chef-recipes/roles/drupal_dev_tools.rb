name "drupal_dev_tools"
description "Useful tools for Drupal developers."
run_list(
  "recipe[drush]",
  "recipe[drush_make]",
)
