# Lesson Title: Configuration Management

Major Objective: By the end of this lesson, you will be able to explain how configuration management relates to virtual machines, and why you would want to provision new virtual machines.

Student Self-Check Tasks: Describe in which communities Chef, Puppet, and Ansible are popular.

Summary:

- Vagrant is a wrapper which creates virtual development environments from base boxes. It acts as a wrapper around a provider, such as VirtualBox, and configuration management software, such as Chef.
- Configuration Management: Configuration management (CM) is a systems engineering process for establishing and maintaining consistency of a product's performance, functional and physical attributes with its requirements, design and operational information throughout its life. http://en.wikipedia.org/wiki/Configuration_management_
- Configuration management enables consistency. Puppet, Chef, and Ansible are three popular open source configuration management tools. Vagrant also allows you to mix and match config tools; as well as use shell scripts for provisioning. We’ll use Chef for CM because it is popular in Drupal.
- Provisioning is the process of preparing and equipping a network to allow it to provide services to users. It may also include altering the state of an existing service or capability. http://en.wikipedia.org/wiki/Provisioning
- Configuration Management Tools: Vagrant shell scripts; Puppet; Chef; Ansible http://lb.cm/compare-cm 
- Chef
  - Overview: https://learnchef.opscode.com/
  - Cookbooks: http://community.opscode.com/

Rationale: "Anything that's hard should be something you practice more often." and "Automate all the things." Retyping the commands to restart Apache is getting annoying. Let's automate it!
