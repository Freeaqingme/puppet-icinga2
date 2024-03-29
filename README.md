# Puppet module: icinga2

This is a Puppet module for icinga2 based on the second generation layout ("NextGen") of Example42 Puppet Modules.

Made by Alessandro Franceschi / Lab42

Official site: http://www.example42.com

Official git repository: http://github.com/example42/puppet-icinga2

Released under the terms of Apache 2 License.

This module requires functions provided by the Example42 Puppi module (you need it even if you don't use and install Puppi)

For detailed info about the logic and usage patterns of Example42 modules check the DOCS directory on Example42 main modules set.


## USAGE - Basic management

* Install icinga2 with default settings

        class { 'icinga2': }

* Install a specific version of icinga2 package

        class { 'icinga2':
          version => '1.0.1',
        }

* Disable icinga2 service.

        class { 'icinga2':
          disable => true
        }

* Remove icinga2 package

        class { 'icinga2':
          absent => true
        }

* Enable auditing without without making changes on existing icinga2 configuration *files*

        class { 'icinga2':
          audit_only => true
        }

* Module dry-run: Do not make any change on *all* the resources provided by the module

        class { 'icinga2':
          noops => true
        }


## USAGE - Overrides and Customizations
* Use custom sources for main config file 

        class { 'icinga2':
          source => [ "puppet:///modules/example42/icinga2/icinga2.conf-${hostname}" , "puppet:///modules/example42/icinga2/icinga2.conf" ], 
        }


* Use custom source directory for the whole configuration dir

        class { 'icinga2':
          source_dir       => 'puppet:///modules/example42/icinga2/conf/',
          source_dir_purge => false, # Set to true to purge any existing file not present in $source_dir
        }

* Use custom template for main config file. Note that template and source arguments are alternative. 

        class { 'icinga2':
          template => 'example42/icinga2/icinga2.conf.erb',
        }

* Automatically include a custom subclass

        class { 'icinga2':
          my_class => 'example42::my_icinga2',
        }


## USAGE - Example42 extensions management 
* Activate puppi (recommended, but disabled by default)

        class { 'icinga2':
          puppi    => true,
        }

* Activate puppi and use a custom puppi_helper template (to be provided separately with a puppi::helper define ) to customize the output of puppi commands 

        class { 'icinga2':
          puppi        => true,
          puppi_helper => 'myhelper', 
        }

* Activate automatic monitoring (recommended, but disabled by default). This option requires the usage of Example42 monitor and relevant monitor tools modules

        class { 'icinga2':
          monitor      => true,
          monitor_tool => [ 'nagios' , 'monit' , 'munin' ],
        }

* Activate automatic firewalling. This option requires the usage of Example42 firewall and relevant firewall tools modules

        class { 'icinga2':       
          firewall      => true,
          firewall_tool => 'iptables',
          firewall_src  => '10.42.0.0/24',
          firewall_dst  => $ipaddress_eth0,
        }


## CONTINUOUS TESTING

Travis {<img src="https://travis-ci.org/example42/puppet-icinga2.png?branch=master" alt="Build Status" />}[https://travis-ci.org/example42/puppet-icinga2]
