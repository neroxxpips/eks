variable "legacy_security_groups" {
  type        = bool
  default     = false
  description = "Preserves existing security group setup from pre 1.15 clusters, to allow existing clusters to be upgraded without recreation"
}

variable "log_retention" {
  type    = string
  default = "30"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "cluster_autoscaler" {
  type        = bool
  default     = true
  description = "Should this group be managed by the cluster autoscaler"
}

variable "aws_auth_role_map" {
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))
  default     = []
  description = "A list of mappings from aws role arns to kubernetes users, and their groups"
}

variable "aws_auth_user_map" {
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))
  default     = []
  description = "A list of mappings from aws user arns to kubernetes users, and their groups"
}

variable "fstype" {
  type        = string
  default     = "xfs"
  description = "File system type that will be formatted during volume creation, (xfs, ext2, ext3 or ext4)"
}


variable "eks_version" {
  type    = string
  default = "1.25"
}

variable "worker_desired_size" {
  type        = number
  default     = 2
  description = "The minimum number of instances that will be launched by this group, if not a multiple of the number of AZs in the group, may be rounded up"
}
variable "worker_max_size" {
  type        = number
  default     = 5
  description = "The minimum number of instances that will be launched by this group, if not a multiple of the number of AZs in the group, may be rounded up"
}

variable "worker_min_size" {
  type        = number
  default     = 1
  description = "The minimum number of instances that will be launched by this group, if not a multiple of the number of AZs in the group, may be rounded up"
}

variable "private_subnet_ids" {
  type = list(string)
  default = ["subnet-0d959bb2d865a6760","subnet-07368c6201b685a7b"]
}

variable "name" {
  type = string
  default = "emblem"
}

variable "bottlerocket" {
  type        = bool
  default     = true
  description = "Use Bottlerocket OS, rather than Amazon Linux"
}

variable "labels" {
  type        = map(string)
  default     = {}
  description = "Labels that will be added to the kubernetes node."
}

variable "taints" {
  type        = map(string)
  default     = { }
  description = "taints that will be added to the kubernetes node"
}


variable "bottlerocket_admin_source" {
  type        = string
  default     = ""
  description = "The URI of the control container"
}

variable "instance_size" {
  type        = string
  default     = "m5.large"
  description = "The size of instances in this node group"
}

variable "key_name" {
  type    = string
  default = "east2-bastion-key"
}

variable "root_volume_size" {
  type        = number
  default     = 40
  description = "Volume size for the root partition"
}
