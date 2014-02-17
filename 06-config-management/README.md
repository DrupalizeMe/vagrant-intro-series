# Lesson Title: Configuration Management

## Rationale

Configuration management (CM) allows administrators to establish and maintain consistency of a computer system throughout its life against a specified set of rules. CM is what
allows you to maintain consistency across all developer environments, and also from your development environment to your server. Configuration management automates the setup
of machines so that there are no inconsistencies. It also makes it faster for your to spin up a virtual environment without having to manually install a Web server, like we
did in a previous lesson.

## Lesson Outcomes

### Major Objective

By the end of this lesson, you will be able to explain how configuration management relates to virtual machines, and why you would want to provision new virtual machines.

### Student Self-Check Tasks

Describe in which communities Chef, Puppet, and Ansible are popular.

## Lesson Summary

- Vagrant is a wrapper which creates virtual development environments from base boxes. It acts as a wrapper around a provider, such as VirtualBox, and configuration management software, such as Chef.
- Configuration Management: Configuration management is a process which allows administrators to establish and maintain consistency of a computer system throughout its life
  against a specified set of rules. Configuration management enables consistency across one, or many, machines.
- Popular open source configuration managaement tools supported by Vagrant include: Puppet, Chef, and Ansible. Chef tends to be popular among Drupal developers. Puppet tends
  to be popular among system administrators (who are not necessarily Web developers first-and-foremost).
- Provisioning is the process of creating, or altering, a system in order to prepare it for service.
- Vagrant allows you to use one or more configuration management tools from the same Vagrantfile to provision a machine; as well as use shell scripts.

## Resources

- [Configuration Management](http://en.wikipedia.org/wiki/Configuration_management)
- [Provisioning](http://en.wikipedia.org/wiki/Provisioning)
- [Comparison of Configuration Management Tools](http://lb.cm/compare-cm)
- [Chef Overview](https://learnchef.opscode.com/)
- [Chef Cookbooks](http://community.opscode.com/)
