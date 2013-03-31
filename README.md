# Node.js + MongoDB + Redis on  stack installator

## Description

Provides basic SHELL + PUPPET procedures to install the following services
 * Node.js
 * MongoDB
 * Redis


## Installation

Note: pre-requisties are preinstalled 

 * Vagrant (http://downloads.vagrantup.com/)
 * VirtualBox (https://www.virtualbox.org/)

in your local environment.   

Then follow steps

	git clone <GIT URL TO BE CLARIFIED> stack
 	cd ./stack
 	vagrant up
 	
now your stack is running and you can log into via SSH. SSH runs on forwarded port 2222.


## Filesystem organization

### /home/stack-install

Into /home/stack-install downloaded all puppet modules from forge.puppetlabs.com.
Driving script is install.sh The folder is shared with host.

## Support

Please free to request a support via github issues if you find any error.


## Contributors

 * Jaromir Muller (https://github.com/jaromirmuller)