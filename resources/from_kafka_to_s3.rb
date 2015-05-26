actions :create
default_action :create

attribute :access_key, :kind_of => String
attribute :secret_key, :kind_of => String
attribute :bucket, :kind_of => String
attribute :prefix, :kind_of => String
attribute :region, :kind_of => String
attribute :topic, :kind_of => String, :name_attribute => true
attribute :ticker_interval, :kind_of => Fixnum, :default => 3600
attribute :kafka_hosts, :kind_of => Array
attribute :buffer_chunk_limit, :kind_of => Fixnum, :default => 100000
attribute :buffer_path, :kind_of => String