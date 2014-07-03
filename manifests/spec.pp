# Class: icinga2::spec
#
# This class is used only for rpsec-puppet tests
# Can be taken as an example on how to do custom classes but should not
# be modified.
#
# == Usage
#
# This class is not intended to be used directly.
# Use it as reference
#
class icinga2::spec inherits icinga2 {

  # This just a test to override the arguments of an existing resource
  # Note that you can achieve this same result with just:
  # class { "icinga2": template => "icinga2/spec.erb" }

  File['icinga2.conf'] {
    content => template('icinga2/spec.erb'),
  }

}
