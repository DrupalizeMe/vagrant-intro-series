# Lesson Title: Install Drupal with Drush 

Major Objective: By the end of this lesson you will be able to install Drupal via Drush from within your Vagrant instance.

Student Self-Check Tasks: Drupal is installed, and I can view it in a web browser at http://localhost:4567.

Rationale: Because you want to be able to have stuff pre-installed when you turn on the machine. It's not necessary, but who wants to apt-get all the things? Hint: not me. The scripts we'll install will get you AMP (you already have Linux); and drush.

Summary:

The machine was configured in the previous lesson, but does not have Drupal installed. This is on purpose. You probably have a specific Drupal project you're working on. If you don't, you can use the following instructions to set up a generic instance of Drupal.

   - `$ vagrant ssh`
   - `$ cd /var/www/docroot`
   - `$ drush dl drupal`
   - `$ cd drupal-XXX`
   - `$ drush si standard --db-url=mysql://root:root@localhost/drupal7 --db-su=root --db-su-pw=root --site-name="Drupal on Vagrant"`
