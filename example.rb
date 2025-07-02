require 'dotenv/load'
require "aws-sdk-s3"
require "pry"

Aws.config.update({
    region: 'us-east-1'
})

s3 = Aws::S3::Client.new
resp = s3.list_buckets
puts resp.inspect
binding.pry