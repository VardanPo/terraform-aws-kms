variable "customer_master_key_spec" {
  default = "SYMMETRIC_DEFAULT"
}
variable "description" {
  type    = string
  default = ""
}
variable "deletion_window_in_days" {
  type    = string
  default = ""
}
variable "enable_key_rotation" {
  type    = bool
  default = false
}
variable "is_enabled" {
  type    = bool
  default = true
}
variable "key_usage" {
  default = "ENCRYPT_DECRYPT"
}
variable "multi_region" {
  type    = bool
  default = false
}
variable "policy" {
  type    = string
  default = ""
}
variable "kms_tags" {
  default = {}
}
variable "alias_name" {
  type    = string
  default = ""
}
