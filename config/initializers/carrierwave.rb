CarrierWave.configure do |config|

  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region: ENV['AWS_DEFAULT_REGION'],
    path_style: true
  }
  config.fog_directory  = ENV['S3_BUCKET_NAME']
  config.cache_storage = :fog
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.asset_host = "https://s3-#{ENV['AWS_DEFAULT_REGION']}.amazonaws.com/#{ENV['S3_BUCKET_NAME']}"
  
end