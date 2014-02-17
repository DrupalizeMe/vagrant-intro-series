# Lesson Title: Installing Vagrant and VirtualBox

Rationale: 

Before we jump into the automation of creating a new developer environment, we need to get the building blocks we'll be working with. You will need to download and install both [Vagrant](http://vagrantup.com) and [VirtualBox](http://virtualbox.org).

You might use a number of different provisioning scripts, or configuration options, or etc, but you need to start with the software installed. "Anything hard should be practiced, not avoided." Try to get into the habit of creating robust, repeatable decisions instead of a brittle infrastructure that can't be easily recreated.

Major Objective: By the end of this lesson, you will be able to install Vagrant and VirtualBox on a host platform of OSX, or Windows; and create and destroy a Vagrant instance.

Student Self-Check Tasks: 

- locate command line; 
- successfully initialize a directory for use with Vagrant (confirm that the file Vagrantfile has been created); 
- successfully intialize a new VM (confirm no fatal errors when running `vagrant up` and ensure a new binary was created in your virtual machines folder); 
- successfully destroy a vagrant instance (confirm the binary file was deleted from the VirtualBox binary folder).

Summary:

1. Install VirtualBox
2. Install Vagrant
3. Create a new directory for your configuration scripts. e.g. Websites, or Work-environments. This folder will not contain the VirtualBox binary files, just the Vagrant
   configuration scripts.
4. From the command line, run the following commands:
   - `$ vagrant init precise32 http://files.vagrantup.com/precise32.box`
   - `$ vagrant up`
   - `$ vagrant ssh` Note: this command will not work for Windows. You will need to use PuTTY to log into your machine. This is covered in the Extras lesson.
   You're now inside your Ubuntu server!
5. To return to your host machine, run the command:
   - `$ exit`
6. To destroy the VM and remove the binary disk image:
   - `$ vagrant destroy`
   This command must be run from the directory which contains the Vagrantfile for the box you wish to destroy. It will not remove any of your configuration files, to recreate the machine, use the commands in step 4.

Gotchas:

There are some gotchas to be aware of:

- Linux and Windows *may* need a reboot because of the kernel drivers being added.
- Sometimes upgrades don't work, and re-installing is your best bet. If you have automatic software updates turned on, and Vagrant stops working for you without an obvious
  reason, try removing everything and re-install using the instructions in this lesson. Removing Vagrant and VirtualBox are covered in one of the extra lessons.

Resources:

- https://www.virtualbox.org/wiki/Downloads
- http://www.vagrantup.com/downloads.html
- link to extra lesson: SSH lesson for Windows
- link to extra lesson: Removing Vagrant and VirtualBox
