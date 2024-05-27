resource "aws_kms_key" "kms_key" {
  customer_master_key_spec = var.customer_master_key_spec
  description              = var.description == "" ? null : var.description
  deletion_window_in_days  = var.deletion_window_in_days == "" ? null : var.deletion_window_in_days
  enable_key_rotation      = var.enable_key_rotation
  is_enabled               = var.is_enabled
  key_usage                = var.key_usage
  multi_region             = var.multi_region
  policy                   = var.policy == "" ? null : var.policy
  tags                     = var.kms_tags
}


resource "aws_kms_alias" "kms_alias" {
  name          = var.alias_name == "" ? null : var.alias_name
  target_key_id = aws_kms_key.kms_key.id
}