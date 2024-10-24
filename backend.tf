terraform {
  backend "s3" {
    bucket                      = "devops-lab-terrafrom-state"
    key                         = "terraform-state"
    endpoint                    = "https://oss-me-central-1.aliyuncs.com"
    use_path_style              = false
    region                      = "me-central-1"
    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
    skip_s3_checksum            = true
  }
}
