action :create do
  access_key = new_resource.access_key
  secret_key = new_resource.secret_key
  bucket = new_resource.bucket
  prefix = new_resource.prefix
  region = new_resource.region
  ticker_interval = new_resource.ticker_interval
  topic = new_resource.topic
  kafka_hosts = new_resource.kafka_hosts

  toml_file_path = "/etc/heka/from_kafka_#{topic}_to_s3.toml"

  template toml_file_path do
    source "from_kafka_to_s3.toml.erb"
    cookbook "heka"
    variables(
      :access_key => access_key,
      :secret_key => secret_key,
      :bucket => bucket,
      :prefix => prefix,
      :region => region,
      :ticker_interval => ticker_interval,
      :topic => topic,
      :kafka_hosts => kafka_hosts
    )
  end
end