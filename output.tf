output "id" {
  value = aws_kms_key.kms_key.id
}
output "arn" {
  value = aws_kms_key.kms_key.arn
}
output "alias" {
  value = aws_kms_alias.kms_alias.name
}