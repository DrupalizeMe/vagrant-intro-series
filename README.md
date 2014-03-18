Introduction to Vagrant
================

This repository includes lesson descriptions and support files pertaining to the learning series <a href="http://drupalize.me/series/introduction-vagrant">Introduction to Vagrant</a> at <a href="http://drupalize.me">Drupalize.Me</a>.

Vagrant allows you to create portable work environments which can be easily reproduced on any system. It's useful for developers and system administrators who want to mimic a server's configuration on their local machine. It's useful for teams who want to quickly get designers and project managers up and running with a local installation.

<a href="http://vagrantup.com">Vagrant</a> is a wrapper which ties together several components including: virtualization software, such as <a href="https://www.virtualbox.org">VirtualBox</a>; a server base box, such as <a href="http://www.ubuntu.com/download/server">Ubuntu</a> provisioning tools for configuration management, such as <a href="http://www.getchef.com/">Chef</a>.

## Lesson Summary

These lessons build on one-another. Completing these lessons in order will provide you with the best learning experience.

We start the series with a brief overview of what Vagrant is, and what the hardware limitations are for using Vagrant. No sense proceeding if your machine isn't up to the job! With the pre-requisites out of the way, we'll go through the steps to install Vagrant and the virtualization software, VirtualBox.

For these lessons, you'll be creating an Ubuntu server on your host machine. Once your server is installed, we'll SSH into the server, and install an Apache, MySQL, and PHP (creating a LAMP stack). There are a couple of "extra" lessons relevant to these beginning steps. There's an "extra" lesson covering SSH for Windows users and also one on updating Vagrant, if you've previously installed it and are having problems getting things up and running for these lessons.

Once your virtual server in place we now need to connect to the server--both in a browser, and also by sharing files into the machine. We're going to configure your virtual server in a way that allows you to continue using your favorite editing tool, such as PHPStorm, or vim, on your host machine, but have the files automatically shared into the server, so that you don't need to upload them.

Although you can configure your server manually, anything that's configured by hand leaves room for error. So the next thing we'll do is learn about configuration management software, such as Puppet, Chef, and Ansible. We're going to focus on the basics of Chef for this learning series (Emma will talk about why she chose Chef in the lesson).

Finally we'll talk about some strategies of how to use Vagrant for your particular workflows. Emma will also give you a bonus lesson of how to install Drupal using Drush. This is sort of a "bonus" lesson, as we cover Drush in more depth in <a href="http://drupalize.me/series/introduction-drush-series">Introduction to Drush</a>.

### Lessons

These lessons build on one-another. Completing these lessons in order will provide you with the best learning experience.

1. [Why Vagrant?](01-why-vagrant/README.md)
2. [Installing Vagrant and VirtualBox](02-installing-vagrant-virtualbox/README.md)
3. [Adding a Web Server](03-adding-web-server/README.md)
4. [Connecting to Your Web Server](04-networking/README.md)
5. [Sharing Files](05-file-sharing/README.md)  
6. [Configuration Management](06-config-management/README.md)
7. [Provisioning with Chef](07-provisioning-chef/README.md)
8. [Installing Drupal with Drush](08-install-drupal/README.md)
9. [Planning Your VM Use](09-planning-vm-use/README.md)

### Extras

These lessons are not part of the main sequence of lessons, but might prove useful for troubleshooting purposes.

- [Updating Vagrant](extras-01-upgrading-vagrant/README.md)
- [Using SSH on Windows](extras-02-windows-ssh/README.md)


## Learning Outcomes
The major objectives for this series are as follows. By the end of this series you should be able to:

- Describe the advantages, and disadvantages for creating a local development environment with Vagrant.
- Log into your virtual machine, and use the command line to install new software.
- Correctly configure your host's network settings to make the virtual machine available via a browser.
- Share files between your host and guest machines without the use of SCP.
- Install Vagrant and VirtualBox on a host platform of OSX, or Windows; and create and destroy a Vagrant instance.
- Explain how configuration management relates to virtual machines, and why you would want to provision new virtual machines.
- Add a Chef recipe to your configuration, and re-provision Vagrant.


## Audience

### Primary Audience:

- Role: Developer - Novice
- Role: Site Builder - Intermediate

### Secondary Audience:

- Role: Technical PM - Advanced
- Role: System Administrator - Novice

### Key Problems:

- Want to eliminate the language of "works for me" between team members and improve ownership over problem, instead of saying it's the other's fault for not being able to make something work. 
- Want to eliminate "well it worked on my local" language, and have the local test environment mimic the server (e.g. different version of PHP).
- Development on Windows kinda sucks, let's get you a "real" server.
- OSX is shiny, but not the same as your beloved Linux machine, let's get you back to what you know.

