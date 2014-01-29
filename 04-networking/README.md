# Lesson Title: Connecting to Your Web Server

Major Objective: By the end of this lesson you will be able to correctly configure your host's network settings to make the virtual machine available via a browser.

Student Self-Check Tasks: In a web browser see "It Works" when you pull up http://localhost.

Rationale: Ultimately local Web development is only effective if you can actually see the results of your work in a Web browser. We need to configure match the configuration in Vagrantfile with our host's networking configuration so that the two know where to find each other. 

Gotchas: This can sometimes be the tricky bit, especially if you already have a lot of custom network configuration. If this lesson doesn't work for you, you will need to do an audit of your system to find any software which might be interfering with the connection. We're going to limit ourselves to one VM running at a time (all the same ports). This is mostly because of the hardware limitations I expect you'll have. If your machine is more powerful, great! But we're not covering it in this video series.
