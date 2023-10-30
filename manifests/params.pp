class varnishkafka::params {
  String $service_name                      = 'varnishkafka'
  Boolean $log_syslog                       = true
  Boolean $log_stderr                       = false
  Boolean $log_errors                       = true
  Boolean $log_stats_append                 = true
  String $log_stats_file                    = '/var/run/varnishkafka.stats.json'
  Integer $log_stats_interval               = 60
  Boolean $rotate_log_stats_file            = false
  Array[String] $kafka_broker_list          = [ 'localhost:9092' ]
  Integer $kafka_retries                    = 3
  Integer $kafka_partition                  = -1
  Integer $kafka_buffer_len                 = 1000000
  Boolean $kafka_require_acks               = true
  Integer $kafka_timeout                    = 60000
  String $kafka_topic                       = 'logs'
  Optional[String] $kafka_security_protocol = undef
  Optional[String] $kafka_sasl_mechanism    = undef
  Optional[String] $kafka_sasl_username     = undef
  Optional[String] $kafka_sasl_password     = undef
  Boolean $daemonize                        = false

  case $::operatingsystem {
    'Debian': {
      case $::operatingsystemmajrelease {
        '8','10': {
          $daemonize = false
        }
        default: {
          fail("unsupported OS version ${::operatingsystem}-${::operatingsystemmajrelease}")
        }
      }
    }
    'RedHat', 'CentOS': {
      case $::operatingsystemmajrelease {
        '7': {
          $daemonize = false
        }
        '8': {
          $daemonize = false
        }
        default: {
          fail("unsupported OS version ${::operatingsystem}-${::operatingsystemmajrelease}")
        }
      }
    }
    'Ubuntu': {
      case $::operatingsystemmajrelease {
        '16.04': {
          $daemonize = false
        }
        default: {
          fail("unsupported OS version ${::operatingsystem}-${::operatingsystemmajrelease}")
        }
      }
    }
    default: {
      fail("unsupported OS ${::operatingsystem}")
    }
  }
}
