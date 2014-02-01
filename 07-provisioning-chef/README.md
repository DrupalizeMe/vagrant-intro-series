# Lesson Title: Provisioning With Chef

Major Objective: By the end of this lesson you will be able to add a Chef recipe, and re-provision Vagrant.

Student Self-Check Tasks: I can issue *drush* commands necessary to install Drupal.

Rationale: Because you want to be able to have stuff pre-installed when you turn on the machine. It's not necessary, but who wants to apt-get all the things? Hint: not me. The scripts we'll install will get you AMP (you already have Linux); and drush.

Summary:

1. Locate Chef recipes for AMP stack, and drush.
2. Create a cookbook for the recipes. (Might want to simplify this and just add the recipes directly to the Vagrantfile.)
4. Add a reference to the cookbook in your vagrant folder.
3. Reprovision the machine with the following command:
   - $ vagrant provision
4. Install Drupal:
   - `$ vagrant ssh`
   - `$ cd /var/www`
   - `$ drush dl drupal --destination=docroot`
   - `$ cd docroot/drupal-XXX`
   - `$ drush si standard --db-url=mysql://root:root@localhost/drupal7 --db-su=root --db-su-pw=root --site-name="Drupal on Vagrant"`
