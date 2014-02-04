# Lesson Title: Provisioning With Chef

Major Objective: By the end of this lesson you will be able to add a Chef recipe, and re-provision Vagrant.

Student Self-Check Tasks: I can issue *drush* commands necessary to install Drupal.

Rationale: Because you want to be able to have stuff pre-installed when you turn on the machine. It's not necessary, but who wants to apt-get all the things? Hint: not me. The scripts we'll install will get you AMP (you already have Linux); and drush.

Summary:

1. Update Chef with the omnibus plugin for Vagrant. On the host machine, install the plugin:
   - `$ vagrant plugin install vagrant-omnibus`
   - Vagrantfile before Chef is run:
     `config.omnibus.chef_version = :latest`
1. Create the folder infrastructure for your Chef configuration files.
   - `$ mkdir -p chef-recipes/roles`
   - `$ mkdir -p chef-recipes/cookbooks`
2. Locate Chef cookbooks for AMP stack, drush, and Drupal-specific PHP libraries you want pre-loaded.
   - http://community.opscode.com/cookbooks/
3. Place downloaded cookbooks into cookbooks `chef-reciples/cookbooks`.
4. Create a new role configuration file for your LAMP in `chef-recipes/roles` which references the recipes you want to load.
5. Update the Vagrantfile to include:
   - path to roles folder
   - path to cookbooks folder
   - role to load for this server
   - overrides for any of the default settings
6. Provision the machine to enable / set-up / trigger the Chef configuration settings:
   - `$ vagrant provision`

The machine is now configured, but does not have Drupal installed. This is on purpose. You probably have a specific Drupal project you're working on. If you don't, you can use the following instructions to set up a generic instance of Drupal.

Install Drupal:

   - `$ vagrant ssh`
   - `$ cd /var/www`
   - `$ drush dl drupal --destination=docroot`
   - `$ cd docroot/drupal-XXX`
   - `$ drush si standard --db-url=mysql://root:root@localhost/drupal7 --db-su=root --db-su-pw=root --site-name="Drupal on Vagrant"`

## Role Configuration Files:
These files contain a list of individual recipes, and/or roles that must be run to provision a specific type of server.
Generally there are three or four parts to them.

   - name
   - description
   - run list (recipes and roles to add)
   - default attributes (optional)

## Vagrantfile Configuration Settings:
Stripped down configuration file. The Vagrantfile is well commented.

````
  config.vm.provision :chef\_solo do |chef|
     # default settings
     chef.cookbooks_path = "path_to_cookbooks_folder"
     chef.roles_path = "path_to_roles_folder"

     # roles and recipes to load
     # recipes are generally loaded from within roles
     chef.add_role "name_of_role"
     chef.add_recipe "name_of_recipe"

     # overrides for settings in recipes
     chef.json = {
       "name_of_recipe" => {
         "name_of_setting" => "new_value",
       },
     }
  end
````

## Gotchas

- Apt will only run if the cache is older than a day. The first time the machine is provisioned, this *might* be a problem. You can force updating the cache
  with the following setting in Vagrantfile `chef.json = { "apt" => {"compiletime" => true} }`
