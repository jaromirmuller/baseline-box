#
#   Copyright 2013 Jaromír Müller
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License
# 

node default {

	Package { 
		ensure => 'present'
	}

	class{'mongodb': }
	file_line{ 'etc_mongodb_conf_bind_ip_0_0_0_0':
	  ensure => 'present',
	  path => '/etc/mongodb.conf',
	  line => "bind_ip = 0.0.0.0",
	  notify  => Service["mongodb"]
	}
	file_line{ 'etc_mongodb_conf_bind_ip_not_127_0_0_1':
	  ensure => 'absent',
	  path => '/etc/mongodb.conf',
	  line => "bind_ip = 127.0.0.1",
	  notify  => Service["mongodb"]
	}
	
	package {'python': }
	package {'g++': }
	package {'make': }
	package {'tar': }
	
	class { 'redis': }
	
	class { 'nodejs':
	  version => 'v0.10.2',
	  require => [
			Package['python'],
			Package['g++'],
			Package['make'],
			Package['tar']	
	  ]
	}
	
	## SOME OTHER USEFUL STAFF
	package {'mc': }
	package {'curl': }
	package {'vim': }
	package {'git': }
	package {'screen': }
	
#	class {'googlechrome': 
#		package => 'google-chrome-stable',
#	}
	
#	package {'xvfb': }
#	package {'imagemagick': }

}
