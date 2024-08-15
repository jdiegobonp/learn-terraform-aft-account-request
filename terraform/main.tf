module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "<ACCOUNT EMAIL>"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "<SSO EMAIL>"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}


module "security_sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jdiegobonp+seg@gmail.com"
    AccountName               = "security_sandbox"
    ManagedOrganizationalUnit = "Security"
    SSOUserEmail              = "jdiegobonp+seg@gmail.com"
    SSOUserFirstName          = "Juan Diego"
    SSOUserLastName           = "Bonilla"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "security_sandbox"
    change_reason       = "Creating new Security AWS account"
  }

  account_customizations_name = "Security-security_sandbox"
}
