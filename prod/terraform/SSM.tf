resource "aws_ssm_parameter" "params" {
  name  = "accnt_id"
  type  = "String"
  value = "${data.aws_caller_identity.current.account_id}"
}