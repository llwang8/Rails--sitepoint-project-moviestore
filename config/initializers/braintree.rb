Braintree::Configuration.environment = :sandbox
Braintree::Configuration.logger = Logger.new('log/braintree.log')
Braintree::Configuration.merchant_id = ENV['v6c34x2hsnnhvp5m']
Braintree::Configuration.public_key = ENV['mdq5y6wfm9dvchps']
Braintree::Configuration.private_key = ENV['1c2422557640afbbbb0689ec2bbbcd62']