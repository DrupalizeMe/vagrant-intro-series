# Lesson Title: Planning Your VM Use

## Rationale

I started with one box per project but found that I task switch frequently enough that this was a problem considering my hardware constraints (8G RAM = only want one machine running at a time). The shut down + startup only takes ~5minutes, but it's still dead time especially as that doesn't include pulling a fresh copy of the Git repo and updating my DB. SO! If you need to task switch frequently, consider "grouping" your projects with similar requirements, and then breaking out new boxes as you justify the split. e.g. you need two different versions of PHP.

## Lesson Objectives

### Major Objective

By the end of this lesson, you will be able to describe how many Vagrant instances you will use, and why.

### Student Self-Check Tasks

Create a list of all your projects requiring a local environment, and group them into similar requirements (e.g. version of PHP).


## Resources

- [Drupal Deploy Cookbook](https://github.com/evolvingweb/chef-deploy-drupal)
