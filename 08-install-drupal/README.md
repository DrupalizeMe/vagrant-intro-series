# Lesson Title: Installing Drupal with Drush 

## Rationale

Not automating the installation of Drupal on our vagrant instance is *by design*. It gives us the ability to quick spin up new machines and then put any version of Drupal onto them. It also allows us to use a single server for multiple Drupal projects (just as you would with a MAMP or WAMP environment). In this lesson you will learn how to install Drupal from the command line using Drush. If you already know how to do this, you should review the Lesson Summary, but you are not required to watch the video as it will be entirely review for you.

Note: The Chef recipe we're using supports Drupal 6 and Drupal 7, but not Drupal 8. You'll need to update Drush first if you want to use these instructions to install Drupal 8.

## Lesson Outcomes

### Major Objective

By the end of this lesson you will be able to install Drupal via Drush from within your Vagrant instance.

### Student Self-Check Tasks

Drupal is installed, and can be viewed it in a web browser at http://localhost:4567.

## Lesson Summary

The machine was configured in the previous lesson, but does not have Drupal installed. This is on purpose. You probably have a specific Drupal project you're working on. If you don't, you can use the following instructions to set up a generic instance of Drupal.

   - `$ vagrant ssh`
   - `$ cd /var/www/docroot`
   - `$ drush dl drupal`
   - `$ cd drupal-XXX` (where XXX is the version number for Drupal you've just downloaded)
   - `$ drush si standard --db-url=mysql://root:root@localhost/drupal7 --db-su=root --db-su-pw=root --site-name="Drupal on Vagrant"` (for the lessons, the MySQL database has
     the username root; and the password root, if you have deviated from these insecure passwords, you wiill need to update this line to get the site install to work).
