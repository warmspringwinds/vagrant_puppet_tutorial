#!/usr/bin/env bash

# Get most current package list
sudo aptitude update

# Install all necessary puppet modules
# Selected OS image has puppet preinstalled
# You may need to install puppet here if system doesn't have it

# Create directory for modules to be installed in it
mkdir -p /vagrant/puppet/modules

puppet module install puppetlabs-apache --force --modulepath \
/vagrant/puppet/modules

puppet module install puppetlabs-mysql --force --modulepath \
/vagrant/puppet/modules