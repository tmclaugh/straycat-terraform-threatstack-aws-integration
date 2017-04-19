// Setup Threat Stack integration

// Backend
# NOTE: Backends cannot contain interpolations at this time. :-|
terraform {
  backend "s3" {
    encrypt = "true"
    bucket  = "ts-demo-dev-terraform"
    key     = "aws_cloudtrail_threatstack.tfstate"
    region  = "us-east-1"
  }
}


// AWS provider
provider "aws" {
  profile = "${var.aws_profile}"
  region  = "${var.aws_region}"
}


// Data
data "terraform_remote_state" "root" {
  backend = "s3"
  config = {
    bucket  = "${var.aws_account}-terraform"
    key     = "root.tfstate"
    region  = "${var.aws_region}"
  }
}


// Resources
module "threatstack_aws_integration" {
  source                        = "github.com/threatstack/tf_threatstack_aws_integration"
  aws_account                   = "${var.aws_account}"
  aws_account_id                = "${data.terraform_remote_state.root.aws_account_id}"
  aws_region                    = "${var.aws_region}"
  threatstack_account_id        = "${var.threatstack_account_id}"
  threatstack_external_id       = "${var.threatstack_external_id}"
}

