# Lesson Title: Sharing Files Between Your Guest and Host Machines

Major Objective: By the end of this lesson you will be able to share files between your host and guest machines.

Student Self-Check Tasks: file copied into local directory appears on the web server.

Rationale: This isn't necessary, but it's more convenient than SCPing files into your local server. 

Summary:

1. Configure synced folder in Vagrantfile. Change:
   `# config.vm.synced_folder "../data", "/vagrant_data"`
   to
   `config.vm.synced_folder "docroot", "/var/www"`
2. Create a new directory using the name identified in the file Vagrantfile.
   `$ mkdir docroot`
3. Reload the vagrant instance (and restart the server). The contents of `/var/www` will appear in `docroot`.
   `$ vagrant reload`
   `$ vagrant ssh`
   `$ sudo /etc/init.d/apache start`
   `$ exit`
4. Edit the Web page from the host machine.
5. Refresh the browser to see the changed file.

Gotchas: As long as you're using basic file sharing (no NFS), it should work "out of the box" for Windows 8, and OSX.
