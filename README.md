# Baseline Vagrant box

## Description

Provides basic SHELL + PUPPET recepies to install the following services
 * Node.js
 * MongoDB
 * Redis

NPM
 * supervisor - https://github.com/isaacs/node-supervisor 

and in future likely much more.  


## Installation

### Prerequisites
Note: The following prerequisites are already installed in host system:

 * Vagrant (http://downloads.vagrantup.com/)
 * VirtualBox (https://www.virtualbox.org/)


### Steps

	git clone <GIT URL TO BE CLARIFIED> baseline-box
 	cd ./baseline-box
 	vagrant up
 	
after some while your box is running and you can log in via SSH, SSH runs on forwarded port 2222.

## Support

Please free to request a support via github issues if you find any error.


## Contributors

 * Jaromir Muller (https://github.com/jaromirmuller)

## LICENSE

   Copyright 2013 Jaromír Müller

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License  