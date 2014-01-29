# Lesson Title: Installing Vagrant and VirtualBox

Major Objective: By the end of this lesson, you will be able to install Vagrant and VirtualBox on a host platform of OSX, or Windows; and create and destroy a Vagrant instance.

Student Self-Check Tasks: locate command line; successfully run vagrant init; successfully run vagrant up; successfully run vagrant destroy.

Rationale: You might use a number of different provisioning scripts, or configuration options, or etc, but you need to start with the software installed. "Anything hard should be practiced, not avoided." Try to get into the habit of creating robust, repeatable decisions instead of a brittle infrastructure that can't be easily recreated.

Summary:

1. Install VirtualBox
2. Install Vagrant
3. Create a new directory.
4. Run the following commands:
   - $ vagrant init precise32 http://files.vagrantup.com/precise32.box
   - $ vagrant up
   - $ vagrant ssh
   You're now inside your Ubuntu server!
5. To return to your host machine, run the command:
   - $ exit
6. To destroy the VM and remove the binary disk image:
   - $ vagrant destroy
   This command must be run from the directory which contains the Vagrantfile for the box you wish to destroy. It will not remove any of your configuration files, to recreate the machine, use the commands in step 4.

Gotchas: There are some gotchas for different host operating systems (Linux *may* need a reboot because of the kernel drivers being added). Sometimes upgrades don't work, and re-installing is your best bet. Always come back to this beginning if Vagrant is barfing and won't `vagrant up`.

Resources:

- https://www.virtualbox.org/wiki/Downloads
- http://www.vagrantup.com/downloads.html
- link to SSH tutorial for Windows
