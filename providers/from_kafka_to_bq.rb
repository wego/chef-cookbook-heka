action :create do
  topic = new_resource.topic
  kafka_hosts = new_resource.kafka_hosts

  project_id = new_resource.project_id
  dataset_id = new_resource.dataset_id
  table_id = new_resource.table_id
  schema_file_path = new_resource.schema_file_path
  pem_file_path = new_resource.pem_file_path
  
  ticker_interval = new_resource.ticker_interval
  buffer_path = new_resource.buffer_path
  buffer_file = new_resource.buffer_file

  toml_file_path = "/etc/heka/from_kafka_#{topic}_to_bq.toml"

  template toml_file_path do
    source "from_kafka_to_bq.toml.erb"
    cookbook "heka"
    variables(
      :topic => topic,
      :kafka_hosts => kafka_hosts,
      :project_id => project_id,
      :dataset_id => dataset_id,
      :table_id => table_id,
      :schema_file_path => schema_file_path,
      :pem_file_path => pem_file_path,
      :ticker_interval => ticker_interval,
      :buffer_path => buffer_path,
      :buffer_file => buffer_file
    )
  end
end
