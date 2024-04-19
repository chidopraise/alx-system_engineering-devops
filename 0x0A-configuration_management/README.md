# 0x0A. Configuration management

Puppet is a configuration management tool.
This project is to practice writing Puppet manifest files to create a file,
install a package, and execute a command.

## Tasks:

0. Using Puppet, create a file in /tmp.
1. Using Puppet, install flask from pip3.
2. Using Puppet, create a manifest that kills a process named killmenow.


Install puppet
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet
You do not need to attempt to upgrade versions. This project is simply a set of tasks to familiarize you with the basic level syntax which is virtually identical in newer versions of Puppet.

Puppet 5 Docs

Install puppet-lint
$ gem install puppet-lint

Author: Abraham Livinus.
