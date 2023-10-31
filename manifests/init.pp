class varnishkafka (
  String $output_format_type,
  Hash $output_format,
  String $output_type,
  Boolean $daemonize                        = false,
  String $service_name                      = 'varnishkafka',
  Boolean $log_syslog                       = true,
  Boolean $log_stderr                       = false,
  Boolean $log_errors                       = true,
  Boolean $rotate_log_stats_file            = false,
  Boolean $log_stats_append                 = true,
  String $log_stats_file                    = '/var/run/varnishkafka.stats.json',
  Integer $log_stats_interval               = 60,
  Array $kafka_broker_list                  = ['localhost:9092'],
  Integer $kafka_retries                    = 3,
  Integer $kafka_partition                  = -1,
  Integer $kafka_buffer_len                 = 1000000,
  Boolean $kafka_require_acks               = true,
  Integer $kafka_timeout                    = 60000,
  String $kafka_topic                       = 'logs',
  Optional[String] $kafka_security_protocol = undef,
  Optional[String] $kafka_sasl_mechanism    = undef,
  Optional[String] $kafka_sasl_username     = undef,
  Optional[String] $kafka_sasl_password     = undef 
) 

  include ::varnishkafka::install
  include ::varnishkafka::config
  include ::varnishkafka::service
}
