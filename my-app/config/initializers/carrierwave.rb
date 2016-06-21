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
      :aws_access_key_id     => S3_KEY,
      :aws_secret_access_key => S3_SECRET,
      :region                => S3_REGION  }
    config.fog_directory  = 'buckett-demo'                          # required
end
