# Lesson Title: Adding a Web Server

## Rationale

This is something that ultimately we want to have in a provisioning script, but this shows you the virtual machine is just like any other server you might have worked with in the past. Any time you want to add new software, you can always come back to this lesson if you (for some reason) don't want to create a recipe and re-provision your machine. Hopefully by the end of this series you'll see why you should never *want* to use this method again.

## Lesson Outcomes

### Major Objective

By the end of this lesson, you will be able to log into your virtual machine, and use the command line to install new software.

### Student Self-Check Tasks

- Log into the server via SSH
- Add an AMP stack.

## Lesson Summary

If you don't want to start with the Ubuntu LTS (precise32) base box, you can choose a different one.

1. Navigate to www.vagrantbox.es.
2. Locate a base box you would like to use. Ensure you are matching the "provider" to what you have. e.g. VirtualBox for these lessons (not VMware).
3. At the command lines, initialize your new server:
   - `$ vagrant init ringtail64 http://cloud-images.ubuntu.com/vagrant/raring/current/raring-server-cloudimg-amd64-vagrant-disk1.box`
   - `$ vagrant up`

Ensure your server is up and running, and then log in with vagrant ssh. This must be done from the directory which contains the file Vagrantfile.

Install an AMP server using the directions for your base box. We'll use the same technique as is covered in Addi's lesson "Installing a Web Server on Ubuntu".

- `$ sudo apt-get install tasksel`
- `$ sudo tasksel install lamp-server`

This will install Apache, MySQL, and PHP.

To confirm the server is running, use the command: `pstree`.

### Gotchas

- OSX can use vagrant ssh; Windows will need to install PuTTY and use ssh vagrant.
- If you get the error `tasksel: aptitude failed (100)`:
  1. `$ sudo apt-get update`
  2. `$ sudo tasksel install lamp-server` 
(I got this error on a precise32 base box with a Windows 8 host running inside of Parallels on a Mac OSX machine.)

## Resources

- [Installing a Web Server on Ubuntu](http://drupalize.me/videos/installing-web-server-ubuntu)
- [SSH tutorial](../extras-02-windows-ssh/README.md)
