resource "oci_artifacts_container_repository" "artifacts_repositories" {
  for_each = toset(var.generic_repositories)

  compartment_id = var.compartment_id

  display_name   = each.value.name
  description    = each.value.description

  is_public    = each.value.is_public
  is_immutable = each.value.is_immutable

  defined_tags = var.defined_tags
  freeform_tags = var.tags
}


resource "oci_artifacts_container_repository" "container_repositories" {
  for_each = toset(var.container_repositories)

  compartment_id = var.compartment_id

  display_name   = each.value.name
  description    = each.value.description

  is_public    = each.value.is_public
  is_immutable = each.value.is_immutable

  defined_tags = var.defined_tags
  freeform_tags = var.tags
}
