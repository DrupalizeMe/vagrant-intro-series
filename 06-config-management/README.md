# Lesson Title: Configuration Management

Major Objective: By the end of this lesson, you will be able to explain how configuration management relates to virtual machines, and why you would want to provision new virtual machines.

Student Self-Check Tasks: Describe in which communities Chef, Puppet, and Ansible are popular.

Rationale: "Anything that's hard should be something you practice more often." and "Automate all the things." Puppet, Chef, Ansible are the three most popular CM tools. Chef is currently popular among Drupal developers and Drupal devops; although Puppet is older and is more popular with sys admins who are not working on Drupal-specific deployments. Ansible is one of the newer kids on the block. Vagrant supports all three. You can mix-and-match, but for your own sanity, try to stick with learning one system at a time. Since we're only going to *install* someone else's recipes, not write our own, it will be easier to use the provisioning tool with the most Drupal-specific recipes (i.e. Chef). Using community tested stuff makes my life a lot easier because I don't have to figure it out, and I'm more likely to have someone else I can ask questions of if I'm using their stuff. http://community.opscode.com/ for non-Drupal chef recipes.
