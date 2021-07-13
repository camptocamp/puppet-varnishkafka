class varnishkafka::config {
  file { '/etc/varnishkafka.conf':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/varnishkafka.conf.erb"),
    notify  => Class['varnishkafka::service'],
  }
  if ($::varnishkafka::rotate_log_stats_file) {
    file { '/etc/logrotate.d/varnishkafka':
      ensure  => present,
      content => template("${module_name}/etc/logrotate.d/varnishkafka"),
    }
  } else {
    file { '/etc/logrotate.d/varnishkafka':
      ensure => absent,
    }
  }
}
