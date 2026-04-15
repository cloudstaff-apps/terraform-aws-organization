resource "aws_organizations_organization" "org" {
  count = var.already_exists ? 0 : 1

  aws_service_access_principals = var.aws_service_access_principals

  enabled_policy_types = var.enabled_policy_types

  feature_set = "ALL"
}

data "aws_organizations_organization" "existing" {
  count = var.already_exists ? 1 : 0
}
