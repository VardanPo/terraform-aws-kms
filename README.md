# Terraform Module Documentation: AWS KMS Key and an associated KMS Alias

This Terraform module provisions an AWS KMS Key and an associated KMS Alias. The `aws_kms_key` resource creates a new KMS key, while the `aws_kms_alias` resource creates an alias for the key.

## Usage

The module can be used by including the following code in your Terraform configuration:

module "my_kms_key" {
  source = "path/to/module"

  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  description              = "My KMS key description"
  deletion_window_in_days  = 30
  enable_key_rotation      = true
  is_enabled               = true
  key_usage                = "ENCRYPT_DECRYPT"
  multi_region             = true
  policy                   = jsonencode({ "Version": "2012-10-17", "Statement": [{ "Effect": "Allow", "Principal": "*", "Action": "*", "Resource": "*" }] })
  kms_tags                 = { environment = "prod", team = "security" }
  alias_name               = "my-kms-key-alias"
}

## Inputs

* `customer_master_key_spec` (required): Specifies the type of KMS key to create. Valid values are `SYMMETRIC_DEFAULT`, `RSA_2048`, `RSA_3072`, `RSA_4096`, `ECC_NIST_P256`, `ECC_NIST_P384`, `ECC_NIST_P521`, `ECC_SECG_P256K1`, and `SYMMETRIC_256`.
* `description` (optional): A description of the KMS key. Defaults to an empty string.
* `deletion_window_in_days` (optional): The number of days for which AWS KMS retains backups of the key. Defaults to an empty string, which means that the default retention period for backups is used.
* `enable_key_rotation` (optional): Whether to enable automatic key rotation for the KMS key. Defaults to `false`.
* `is_enabled` (optional): Whether the KMS key is enabled. Defaults to `true`.
* `key_usage` (optional): The intended use of the KMS key. Valid values are `ENCRYPT_DECRYPT` and `SIGN_VERIFY`. Defaults to `ENCRYPT_DECRYPT`.
* `multi_region` (optional): Whether the KMS key is replicated across multiple AWS regions. Defaults to `false`.
* `policy` (optional): A JSON policy string that defines the permissions for the KMS key. Defaults to an empty string, which means that AWS KMS applies a default key policy to the key.
* `kms_tags` (optional): A map of tags to apply to the KMS key. Defaults to an empty map.
* `alias_name` (optional): The name of the KMS alias to create. Defaults to an empty string, which means that no alias is created.

## Outputs

* `id`: The ID of the KMS key.
* `arn`: The ARN of the KMS key.
* `alias`: The name of the KMS alias associated with the key.
