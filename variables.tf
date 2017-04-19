// Setup a default CloudTrail trail.

//Variables
variable "threatstack_account_id" {
  type = "string"
  description = "Threat Stack AWS account ID."
}

variable "threatstack_external_id" {
  type = "string"
  description = "Threat Stack AWS external ID."
}

variable "aws_account" {
  type = "string"
  description = "Used for naming S3 bucket in tf_example_aws_s3"
}

variable "aws_profile" {
  type = "string"
  description = "Used to configure AWS provider."
}

variable "aws_region" {
  type = "string"
  description = "Used for finding root state in tf_example_aws_s3"
}

