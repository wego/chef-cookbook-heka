actions :create
default_action :create

attribute :log_directory, :kind_of => String
attribute :file_match, :kind_of => String, :name_attribute => true
attribute :topic, :kind_of => String
attribute :kafka_host, :kind_of => String