actions :create
default_action :create

attribute :topic, :kind_of => String, :name_attribute => true
attribute :kafka_hosts, :kind_of => Array

attribute :project_id, :kind_of => String
attribute :dataset_id, :kind_of => String
attribute :table_id, :kind_of => String
attribute :schema_file_path, :kind_of => String
attribute :pem_file_path, :kind_of => String

attribute :ticker_interval, :kind_of => Fixnum, :default => 10
attribute :buffer_path, :kind_of => String
attribute :buffer_file, :kind_of => String
