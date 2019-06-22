# == Class: puppetconf
#
class puppetconf (
  String  $master      = $puppetconf::params::master,
  String  $certname    = $puppetconf::params::certname,
  String  $environment = $puppetconf::params::environment,
  String  $runinterval = $puppetconf::params::runinterval,
  String  $vardir      = $puppetconf::params::vardir,
  String  $logdir      = $puppetconf::params::logdir,
  String  $rundir      = $puppetconf::params::rundir,
  String  $pidfile     = $puppetconf::params::pidfile,
  String  $codedir     = $puppetconf::params::codedir,
  String  $alt_names   = $puppetconf::params::alt_names,
  String  $conffile    = $puppetconf::params::conffile,
  Boolean $is_master   = $puppetconf::params::is_master,
) inherits puppetconf::params {
  file { $conffile:
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('puppetconf/puppet.conf.erb'),
  }
}
