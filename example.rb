require 'dotenv/load'
require "aws-sdk-s3"
require "pry"

Aws.config.update

s3 = Aws::S3::Client.new
resp = s3.list_buckets
puts resp.inspect
binding.pry