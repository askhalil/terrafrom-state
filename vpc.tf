resource "alicloud_vpc" "terraform_state" {
  vpc_name   = "terraform-state"
  cidr_block = "10.0.0.0/16"
}

resource "alicloud_vswitch" "public" {
  vswitch_name = "public"
  vpc_id       = alicloud_vpc.terraform_state.id
  cidr_block   = "10.0.1.0/24"
  zone_id      = "me-central-1a"
}

resource "alicloud_vswitch" "private" {
  vswitch_name = "private"
  vpc_id       = alicloud_vpc.terraform_state.id
  cidr_block   = "10.0.2.0/24"
  zone_id      = "me-central-1a"
}
