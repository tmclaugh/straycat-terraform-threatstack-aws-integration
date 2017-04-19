// Outputs
output "cloudtrail_id" {
  value = "${module.threatstack_aws_integration.cloudtrail_id}"
}

output "cloudtrail_home_region" {
  value = "${module.threatstack_aws_integration.cloudtrail_home_region}"
}

output "cloudtrail_arn" {
  value = "${module.threatstack_aws_integration.cloudtrail_arn}"
}

output "iam_role_cloudtrail_arn" {
  value = "${module.threatstack_aws_integration.iam_role_cloudtrail_arn}"
}

output "iam_role_cloudtrail_name" {
  value = "${module.threatstack_aws_integration.iam_role_cloudtrail_name}"
}

output "cloudwatch_log_group_arn" {
  value = "${module.threatstack_aws_integration.cloudwatch_log_group_arn}"
}

output "iam_role_name" {
  value = "${module.threatstack_aws_integration.iam_role_name}"
}

output "iam_role_arn" {
  value = "${module.threatstack_aws_integration.iam_role_arn}"
}

output "s3_bucket_id" {
  value = "${module.threatstack_aws_integration.s3_bucket_id}"
}

output "s3_bucket_arn" {
  value = "${module.threatstack_aws_integration.s3_bucket_arn}"
}

output "sns_topic_arn" {
  value = "${module.threatstack_aws_integration.sns_topic_arn}"
}

output "sqs_queue_id" {
  value = "${module.threatstack_aws_integration.sqs_queue_id}"
}

output "sqs_queue_arn" {
  value = "${module.threatstack_aws_integration.sqs_queue_arn}"
}

output "sqs_queue_source" {
  value = "${module.threatstack_aws_integration.sqs_queue_source}"
}

