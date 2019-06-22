class puppetconf::params {
  $master      = undef
  $certname    = "${::fqdn}"
  $environment = 'production'
  $runinterval = '1h'
  $vardir      = '/opt/puppetlabs/server/data/puppetserver'
  $logdir      = '/var/log/puppetlabs/puppetserver'
  $rundir      = '/var/run/puppetlabs/puppetserver'
  $pidfile     = '/var/run/puppetlabs/puppetserver/puppetserver.pid'
  $codedir     = '/etc/puppetlabs/code'
  $alt_names   = 'puppet'
  $conffile    = '/etc/puppetlabs/puppet/puppet.conf'
  $is_master   = false
}
