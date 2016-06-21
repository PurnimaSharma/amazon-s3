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
      :aws_access_key_id     => "AKIAJ6QC2SRYAAB546XA",
      :aws_secret_access_key => "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",
      :region                => "us-west-2"  }
    config.fog_directory  = 'buckett-demo'                          # required
end
