<!-- BEGIN_TF_DOCS -->
# Terraform OCI Registries

[![Lints](https://github.com/abarrak/terraform-oci-registries/actions/workflows/format.yml/badge.svg)](https://github.com/abarrak/terraform-oci-registries/actions/workflows/format.yml) [![Docs](https://github.com/abarrak/terraform-oci-registries/actions/workflows/docs.yml/badge.svg)](https://github.com/abarrak/terraform-oci-registries/actions/workflows/docs.yml)

This module provides ability to manage repositories in oracle cloud registry (OCIR).

## Usage
You can specify the repostories you need to provision either in container registry serivce. <br>
Or in the artifacts registry service in Oracle.

```hcl
module "registries" {
  source    = "registry.terraform.io/abarrak/registries/oci"
  version   = "1.0.0"

  providers = {
    oci    = oci
  }

  compartment_id = var.compartment_id

  container_repositories = [
    { name: "api-releases", is_public = false , is_immutable = false }
    { name: "web-releases", is_public = false , is_immutable = false }
  ]

  generic_repositories = [
    { name: "jars-files",
      description = "The private hosted jar files.",
      is_public = false ,
      is_immutable = true
    }
  ]
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | >= 5.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | >= 5.9.0 |

## Resources

| Name | Type |
|------|------|

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | The compartments OCID to create the resources in. | `string` | n/a | yes |
| <a name="input_container_repositories"></a> [container\_repositories](#input\_container\_repositories) | A list of the container repositories to be created for holding container images. | `list(object({ name = string, description = string, is_public = bool, is_immutable = bool }))` | `[]` | no |
| <a name="input_defined_tags"></a> [defined\_tags](#input\_defined\_tags) | Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: {"Operations.CostCenter": "42"} | `map(string)` | `{}` | no |
| <a name="input_generic_repositories"></a> [generic\_repositories](#input\_generic\_repositories) | A list of the generic repositories to be created for holding artifacts. | `list(object({ name = string, description = string, is_public = bool, is_immutable = bool }))` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Optional tags to attach to the resources. Each tag is a simple key-value pair with no predefined name, type, or namespace. Example: {"Department": "Finance"} | `map(string)` | `{}` | no |
| <a name="input_tenancy_id"></a> [tenancy\_id](#input\_tenancy\_id) | The tenancy OCID. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_artifacts_repositories_billing"></a> [artifacts\_repositories\_billing](#output\_artifacts\_repositories\_billing) | Total storage size in GBs that will be charged. |
| <a name="output_artifacts_repositories_ids"></a> [artifacts\_repositories\_ids](#output\_artifacts\_repositories\_ids) | The OCIDs of provisioned artifacts repositories. |
| <a name="output_container_repositories_billing"></a> [container\_repositories\_billing](#output\_container\_repositories\_billing) | Total storage size in GBs that will be charged. |
| <a name="output_container_repositories_ids"></a> [container\_repositories\_ids](#output\_container\_repositories\_ids) | The OCIDs of provisioned container repositories. |

# License

MIT.
<!-- END_TF_DOCS -->
