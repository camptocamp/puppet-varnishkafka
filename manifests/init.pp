lass varnishkafka (
  String $output_format_type,
  Hash $output_format,
  String $output_type,
  Boolean $daemonize              = $::varnishkafka::params::daemonize,
  String $service_name            = $::varnishkafka::params::service_name,
  Boolean $log_syslog             = $::varnishkafka::params::log_syslog,
  Boolean $log_stderr             = $::varnishkafka::params::log_stderr,
  Boolean $log_errors             = $::varnishkafka::params::log_errors,
  Boolean $rotate_log_stats_file  = $::varnishkafka::params::rotate_log_stats_file,
  Boolean $log_stats_append       = $::varnishkafka::params::log_stats_append,
  String $log_stats_file          = $::varnishkafka::params::log_stats_file,
  Integer $log_stats_interval     = $::varnishkafka::params::log_stats_interval,
  Array $kafka_broker_list        = $::varnishkafka::params::kafka_broker_list,
  Integer $kafka_retries          = $::varnishkafka::params::kafka_retries,
  Integer $kafka_partition        = $::varnishkafka::params::kafka_partition,
  Integer $kafka_buffer_len       = $::varnishkafka::params::kafka_buffer_len,
  Boolean $kafka_require_acks     = $::varnishkafka::params::kafka_require_acks,
  Integer $kafka_timeout          = $::varnishkafka::params::kafka_timeout,
  String $kafka_topic             = $::varnishkafka::params::kafka_topic,
  String $kafka_security_protocol = $::varnishkafka::params::kafka_security_protocol,
  String $kafka_sasl_mechanism    = $::varnishkafka::params::kafka_sasl_mechanism,
  String $kafka_sasl_username     = $::varnishkafka::params::kafka_sasl_username,
  String $kafka_sasl_password     = $::varnishkafka::params::kafka_sasl_password,
) inherits varnishkafka::params {

  include ::varnishkafka::install
  include ::varnishkafka::config
  include ::varnishkafka::service
}
