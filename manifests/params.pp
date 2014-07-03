# Class: icinga2::params
#
# This class defines default parameters used by the main module class icinga2
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to icinga2 class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class icinga2::params {

  ### Application related parameters

  $package = $::operatingsystem ? {
    default => 'icinga2',
  }

  $service = $::operatingsystem ? {
    default => 'icinga2',
  }

  $service_status = $::operatingsystem ? {
    default => true,
  }

  $process = $::operatingsystem ? {
    default => 'icinga2',
  }

  $process_args = $::operatingsystem ? {
    default => '',
  }

  $process_user = $::operatingsystem ? {
    default => 'icinga2',
  }

  $config_dir = $::operatingsystem ? {
    default => '/etc/icinga2',
  }

  $config_file = $::operatingsystem ? {
    default => '/etc/icinga2/icinga2.conf',
  }

  $config_file_mode = $::operatingsystem ? {
    default => '0644',
  }

  $config_file_owner = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_group = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_init = $::operatingsystem ? {
    /(?i:Debian|Ubuntu|Mint)/ => '/etc/default/icinga2',
    default                   => '/etc/sysconfig/icinga2',
  }

  $pid_file = $::operatingsystem ? {
    default => '/var/run/icinga2.pid',
  }

  $data_dir = $::operatingsystem ? {
    default => '/etc/icinga2',
  }

  $log_dir = $::operatingsystem ? {
    default => '/var/log/icinga2',
  }

  $log_file = $::operatingsystem ? {
    default => '/var/log/icinga2/icinga2.log',
  }

  $port = '42'
  $protocol = 'tcp'

  # General Settings
  $my_class = ''
  $source = ''
  $source_dir = ''
  $source_dir_purge = false
  $template = ''
  $options = ''
  $service_autorestart = true
  $version = 'present'
  $absent = false
  $disable = false
  $disableboot = false

  ### General module variables that can have a site or per module default
  $monitor = false
  $monitor_tool = ''
  $monitor_target = $::ipaddress
  $firewall = false
  $firewall_tool = ''
  $firewall_src = '0.0.0.0/0'
  $firewall_dst = $::ipaddress
  $puppi = false
  $puppi_helper = 'standard'
  $debug = false
  $audit_only = false
  $noops = false

}
