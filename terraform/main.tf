module "checkgithub" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "checkgithub@acloudserve.com"
    AccountName  = "checkgithub"
    ManagedOrganizationalUnit = "Sandboxes"

    SSOUserEmail     = "admin@acloudserve.com"
    SSOUserFirstName = "Admin"
    SSOUserLastName  = "Acloudserve"
  }

  change_management_parameters = {
    change_requested_by = "John Doe"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
    custom3 = "c"
  }

  account_customizations_name = "developer-customization"
}
