CarrierWave.configure do |config|
=begin
  if Rails.env.development?
    config.storage = :file
  elsif Rails.env.test?
    config.storage = :file
    config.enable_processing = false
  else

=end
    #config.fog_provider = 'fog/aws'                        # required
    config.fog_credentials = {
      provider:              'AWS',                        # required
      :aws_access_key_id     => "AKIAIA6ZBNEMXS643UKQ",
      :aws_secret_access_key => "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",
      :region                => "us-west-2"  }
    config.fog_directory  = 'buckett-demo'                          # required
end
