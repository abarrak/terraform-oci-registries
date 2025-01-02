variable "compartment_id" {
  description = "The compartments OCID to create the resources in."
  type        = string
}

variable "generic_repositories" {
  description = "A list of the generic repositories to be created for holding artifacts."
  type        = list(object({name = string, description = string, is_public = bool, is_immutable = bool}))
  default     = []
}

variable "container_repositories" {
  description = "A list of the container repositories to be created for holding container images."
  type        = list(object({name = string, description = string, is_public = bool, is_immutable = bool}))
  default     = []
}

variable "tags" {
  description = "Optional tags to attach to the resources. Each tag is a simple key-value pair with no predefined name, type, or namespace. Example: {\"Department\": \"Finance\"}"
  type        = map(string)
  default     = {}
}

variable "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: {\"Operations.CostCenter\": \"42\"}"
  type        = map(string)
  default     = {}
}
