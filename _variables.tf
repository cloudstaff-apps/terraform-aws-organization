variable "name" {
  description = "Name for this organization (not actually used in API call)"
}

variable "already_exists" {
  default     = false
  description = "Whether the organization already exists or needs to be created"
}

variable "aws_service_access_principals" {
  type = list(string)
  description = "list of service principals to be enabled when creating a new organisation"
  default = [
      "cloudtrail.amazonaws.com",
      "config.amazonaws.com",
      "cost-optimization-hub.bcm.amazonaws.com",
      "inspector2.amazonaws.com",
      "member.org.stacksets.cloudformation.amazonaws.com",
      "notifications.amazonaws.com",
      "ssm.amazonaws.com",
      "sso.amazonaws.com",
  ]
}

variable "enabled_policy_types" {
  type = list(string)
  default = [
      "SERVICE_CONTROL_POLICY"
  ]
}
