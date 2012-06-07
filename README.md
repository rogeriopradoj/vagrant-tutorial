# Cooking up a Virtual Development Environment #

In this technical tutorial we will cover the use Vagrant & Chef to script and automate the setup of a Virtual development environment tailored to PHP.

We will begin by investigating the problems associated with differing environments within a development team when working with PHP and LAMP stacks, explaining how differing software stacks can lead to unexpected defects. Most notably introducing risk to our projects during deployment based on environment differences.

Based on example lead steps, delegates will build a virtual environment using a scripted Chef recipe. Over the course of the tutorial delegates will build a local virtual server with a full LAMP stack and their preferred development tools such as PHPUnit, PHPCode_Sniffer and PHPSpec. They will create a shared file system between the virtual server and their laptop to allow them to continue to use their editor of choice.

By the end of the tutorial delegates will have created a fully automated process for creating a repeatable and distributable virtual environment. They will then be able to apply these practices within their own development teams to streamline the creation of a unified environment for their software projects.

## File Structures

The directories in this tutorial repository represent a standard structure for combining Vagrant and Chef Solo within your development practices. Each directory contains a README.md file that describes the purpose of the directory and what it will likely contain.

## Exercise 1

Install vagrant

    $ sudo gem install vagrant

## Exercise 2

Add a base box to your system

    $ vagrant box add <local_box_name> http://timhuegdon.com/vagrant-boxes/ubuntu-11.10.box

List the available local boxes

    $ vagrant box list

## Exercise 3

Initialize your vagrant project with the correct base box

    $ vagrant init [local_box_name]

## Exercise 4

Start your VM

    $ vagrant up

## Exercise 5

Pause your VM

    $ vagrant suspend

Start your VM

    $ vagrant resume

Connect to your VM with SSH

    $ vagrant ssh

Manually install apache on your VM

    $ sudo apt-get install apache2

Log out of your VM

    $ exit

Access the default apache site in your hosts browser

    http://192.168.33.10

Destroy your VM

    $ vagrant up

Create your VM again

    $ vagrant up

Confirm if apache is still available

    http://192.168.33.10
    
## Exercise 6

Reload your VM

    $ vagrant reload

## Exercise 7

Reload your VM

    $ vagrant reload

## Exercise 8

Provision your VM

    $ vagrant provision

## Exercise 9

Destroy your VM

    $ vagrant destroy

Create the VM with the new configuration

    $ vagrant up
    
## Exercise 10

Create VMs

    $ vagrant up

SSH into a box

    $ vagrant ssh web
