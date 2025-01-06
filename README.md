# Terraform OCI Registries

This module provides ability to manage repositories in oracle cloud registry (OCIR).


## Usage
You can specify the repostories you need to provision either in container registry serivce. <br>
Or in the artifacts registry service in Oracle.

```hcl
module "registries" {
  source    = "registry.terraform.io/abarrak/oci-registires"
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

# License
MIT.
