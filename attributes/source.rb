#
# Cookbook Name:: heka
# Attribute:: source
#

default["heka"]["source"] = {
  "packages" => %w{ cmake mercurial git-core },
  "plugins" => [
    # Add items here like the following that's required for integration with kafka
    "add_external_plugin(git https://github.com/genx7up/heka-kafka acf3ac7a3d6d6dab313510f81828fca2f9375229)",
    "add_external_plugin(git https://github.com/wego/heka-s3 master)"
  ],
  "git" => {
    "source" => "https://github.com/mozilla-services/heka.git",
  },
  "golang" => {
    "PATH" => [
      "/usr/local/go/bin",
      "/opt/go/bin"
    ],
    "packages" => [
      ## Add libraries required for plugins such as the the sarama library
      ## for communication with kafka
      "github.com/Shopify/sarama",
      ## for communication with AWS
      "github.com/mitchellh/goamz",
      "github.com/vaughan0/go-ini"
    ]
  },
  "dir" => {
    "main" => "/usr/local/heka"
  }
}