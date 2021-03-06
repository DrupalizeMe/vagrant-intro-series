# Lesson Title: Provisioning with Chef

## Rationale

Because you want to be able to have stuff pre-installed when you turn on the machine. It's not necessary, but who wants to apt-get all the things? Hint: not me. The scripts we'll install will get you AMP (you already have Linux); and drush.

## Lesson Outcomes

### Major Objective

By the end of this lesson you will be able to add a Chef recipe, and re-provision Vagrant.

### Student Self-Check Tasks

I can issue *drush* commands necessary to install Drupal.

## Lesson Summary

In the video, I've already setup Chef recipes, roles, and cookbooks for you. So instead of having to download all the pieces separately, you can just start with this repository. The outline here, however, includes each of the steps that I went through to prepare the configuration Chef recipes and roles that you're downloading.

### Assembling Chef Cookbooks

1. Locate Chef cookbooks for AMP stack, drush, and Drupal-specific PHP libraries you want pre-loaded.
   - http://community.opscode.com/cookbooks/
2. Place downloaded cookbooks into a sub-folder in your project directory. For example: `chef-recipes/cookbooks`.
3. Create a role file to include all of the recipes (from each of the cookbooks) you want to load. This file can be placed into its own roles sub-directory. For example: `chef-recipes/roles/lamp_stack.rb`.
4. Update the Vagrantfile to include:
   - path to cookbooks folder
   - path to roles folder
   - role(s) to load for this server
   - new values for any of the default settings for your recipes
5. Provision the machine to enable / set-up / trigger the Chef configuration settings:
   - `$ vagrant provision`

The machine is now configured, but does not have Drupal installed. This is on purpose. You probably have a specific Drupal project you're working on. 

### Configuration Files

The role files contain a list of individual recipes, and/or roles that must be run to provision a specific type of server.
Generally there are three or four parts to them.

   - name
   - description
   - run list (recipes and roles to add)
   - default settings for recipes (optional)

You should investigate the contents of the folder `chef-recipes/roles`. There is a detailed README tailored to this learning series, as well as the two roles that were
created for this lesson.

The Vagrantfile is well commented, this section includes a quick references of the settings that have been updated in the file.

````
  config.vm.provision :chef_solo do |chef|
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

### Gotchas

- Apt will only run if the cache is older than a day. The first time the machine is provisioned, this *might* be a problem. You can force updating the cache
  with the following setting in Vagrantfile `chef.json = { "apt" => {"compiletime" => true} }`
- You may want to update Chef with the omnibus plugin for Vagrant if the cookbook you want to add requires a newer version of Chef. On the host machine, install the plugin: `$ vagrant plugin install vagrant-omnibus`. And edit the Vagrantfile to add the following: `config.omnibus.chef_version = :latest`. Note: Chef must be updated before it is "run". For this lesson, I opted to use older versions of the cookbooks. 20 hours of my life spent working on upgrades that didn't work. The later scripts provide more flexibility (e.g. install ANY version of Drush, not just 5.8), but they work well enough for our needs.
- If you are running into problems with permissions, refer to the tips in [Lesson 5](../05-file-sharing/README.md) on file sharing.
