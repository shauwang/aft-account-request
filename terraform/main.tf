module "checkinggithub" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "checkinggithub@acloudserve.com"
    AccountName  = "checkinggithub"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandboxes"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "checkinggithub@acloudserve.com"
    SSOUserFirstName = "checkinggithub"
    SSOUserLastName  = "acloudserve"
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
