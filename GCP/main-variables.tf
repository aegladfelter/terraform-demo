
variable name {default="acme"}
variable project {}
variable credentials {}
variable region {default = "us-east-1"}
variable zones { default = ["us-east-1", "us-east-1"] }
variable env { default = "dev" }
variable network_name {default = "acme demo network"}
variable image {default="ubuntu-os-cloud/ubuntu-1804-lts"}

variable appserver_count { default = 1 }
variable webserver_count { default = 2 }
variable app_image { default = "centos-7-v20170918" }
variable instance_type { default = "f1-micro" }
variable no_of_db_instances{ default = 1 }
# variable create_default_vpc{ default = true }
variable enable_autoscaling {default = true}
variable db_user {}
variable db_password {}