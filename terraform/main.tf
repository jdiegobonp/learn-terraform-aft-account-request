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


module "SIEM" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "siem+jdiegobonp@gmail.com"
    AccountName               = "SIEM"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "siem+jdiegobonp@gmail.com"
    SSOUserFirstName          = "siem"
    SSOUserLastName           = "Admin"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "SIEM"
    change_reason       = "Creating Security AWS account"
  }

  account_customizations_name = "Security-SIEM"
}
