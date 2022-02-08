module "checkgithub" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "checkgithub@acloudserve.com"
    AccountName  = "checkgithub"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandboxes"
    SSOUserEmail     = "admin@amazon.com"
    SSOUserFirstName = ="Admin"
    SSOUserLastName  = "Acloudserve"
  }

  account_tags = {
    "ABC:Owner"       = "checkgithub@acloudserve.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
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
