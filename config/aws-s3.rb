require 'aws-sdk'
Aws.config.update({
  region: 'us-west-1',
  credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'])
})

s3 = Aws::S3::Resource.new
bucket = s3.bucket('visitcrcc')