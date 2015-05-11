action :create do
  log_directory = new_resource.log_directory
  file_match = new_resource.file_match
  topic = new_resource.topic
  kafka_host = new_resource.kafka_host

  toml_file_path = "/etc/heka/from_#{file_match}_to_kafka.toml"

  template toml_file_path do
    source "from_log_to_kafka.toml.erb"
    cookbook "heka"
    variables(
      :log_directory => log_directory,
      :file_match => file_match,
      :topic => topic,
      :kafka_host => kafka_host
    )
  end
end