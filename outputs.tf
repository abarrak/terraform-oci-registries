output "artifacts_repositories_ids" {
  description = "The OCIDs of provisioned artifacts repositories."
  value       = oci_artifacts_container_repository.artifacts_repositories[*].id
}

output "container_repositories_ids" {
  description = "The OCIDs of provisioned container repositories."
  value       = oci_artifacts_container_repository.container_repositories[*].id
}


output "artifacts_repositories_billing" {
  description = "Total storage size in GBs that will be charged."
  value       = oci_artifacts_container_repository.artifacts_repositories[*].billable_size_in_gbs
}

output "container_repositories_billing" {
  description = "Total storage size in GBs that will be charged."
  value       = oci_artifacts_container_repository.container_repositories[*].billable_size_in_gbs
}
