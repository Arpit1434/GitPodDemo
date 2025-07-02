require 'dotenv/load'
require "aws-sdk-s3"
require "pry"

Aws.config.update({
    region: 'us-east-1',
    credentials: Aws::Credentials.new(
        ENV['AWS_ACCESS_KEY_ID'],
        ENV['AWS_SECRET_ACCESS_KEY']
    )
})

s3 = Aws::S3::Client.new
resp = s3.list_buckets
puts resp.inspect
binding.pry