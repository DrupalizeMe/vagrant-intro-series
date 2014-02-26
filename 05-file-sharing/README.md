# Lesson Title: Sharing Files Between Your Guest and Host Machines

## Rationale

Your Web server will be located inside the Vagrant instance, in order to upload files to the server, you can either use SCP or enable file sharing. With file sharing enabled you will be able to transfer files into specific directories within your Vagrant instance using your local file manager (e.g. Finder or Windows Explorer) and continue working on them with your favorite IDEs and code editing tools. Technically, enabling file sharing isn't necessary, but it is much more convenient than SCPing files into your local server. 

## Lesson Outcomes

### Major Objective

By the end of this lesson you will be able to share files between your host and guest machines without the use of SCP.

### Student Self-Check Tasks

After enabling file sharing, you should be able to copy a file into the shared folder in your Vagrantfile and have it automatically appear inside the Vagrant instance. e.g. you can load a static web page created on your local machine without having to use SCP.

## Lesson Summary

As long as you're using basic file sharing (no NFS), it should work "out of the box" for Windows 8, and OSX.

1. Configure synced folder in Vagrantfile.
   - Locate and remove: `# config.vm.synced_folder "../data", "/vagrant_data"`
   - In its place, add: `config.vm.synced_folder "docroot", "/var/www"`
2. Create a new directory using the name identified in the file Vagrantfile.
   - `$ mkdir docroot`
3. Reload the vagrant instance (and restart the server). The contents of `/var/www` will appear in `docroot`.
  - `$ vagrant reload`
  - `$ vagrant ssh`
  - `$ sudo /etc/init.d/apache start`
  - `$ exit`
4. Edit the Web page from the host machine.
5. Refresh the browser to see the changed file.

### Gotchas

If you are having problems with file permissions / ownership, try editing the permisisons from the host machine, not the guest machine. This is most noticeable when you are creating a new Drupal instance and there are folders / files created automatically by the system. Vagrant won't give a warning to explain why it won't change permissions, it simply doesn't show any changes after running chommands such as: `chmod +w <directory_name>`. 

If you are still having problems with silent file permissions, update your Vagrantfile as follows:
  1. Locate the setting for `config.vm.synced_folder`
  2. Add a server-friendly owner, by adding the following to the end: `, :owner => "www-data"`
  3. Add a server-friendly group, by adding the following to the end: `, :group => "www-data"`

If you're STILL having problems, update your Vagrantfile to give more permissive defaults.
  1. Locate the setting for `config.vm.synced_folder` and add the following to the end: `, :mount_options => ['dmode=775', 'fmode=664']`

The final line should be something like this (all one line):
  ````
  config.vm.synced_folder "docroot", "/var/www", 
      :owner => "www-data", :group => "www-data", 
      :mount_options => ['dmode=775', 'fmode=664']
  ````
