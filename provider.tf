provider "oci" {
  region              = var.oci_region
  tenancy_ocid        = var.tenancy_id
  config_file_profile = var.compartment_name
}

terraform {
  required_providers {
    oci = {
      source                = "hashicorp/oci"
      configuration_aliases = [oci.home]
      version               = ">= 5.9.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
  required_version = "= 1.3.3"
}
