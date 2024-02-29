include {
  path = "${find_in_parent_folders()}"
}

inputs = {
  import_prefix = "@"

  generate_providers = {
    aws_default_tags = {
      "coveo_asset_classification" = "INTERNAL"
      "coveo_billing"              = "security__mt__compliance"
      "coveo_env"                  = var.env
      "coveo_product"              = "tbronson-pentest"
      "coveo_repository_url"       = "https://github.com/coveo-platform/tbronson-pentest"
      "coveo_team_name"            = "offsec"
      "uam_team"                   = "offsec"
    }
  }
}
