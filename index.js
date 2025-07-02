import dotenv from 'dotenv'
import { S3Client, ListBucketsCommand } from '@aws-sdk/client-s3'

dotenv.config()

const s3 = new S3Client({
    region: 'us-east-1'
})

const command = new ListBucketsCommand({})
const response = await s3.send(command)
console.log(response)