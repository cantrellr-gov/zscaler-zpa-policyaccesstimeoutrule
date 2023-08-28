resource "zpa_policy_timeout_rule" "efa_policyaccesstimeoutrule" {
  name                = var.efa_policyaccesstimeoutrule_name
  description         = var.efa_policyaccesstimeoutrule_description
  action              = var.efa_policyaccesstimeoutrule_action
  reauth_idle_timeout = var.efa_policyaccesstimeoutrule_reauth_idle_timeout
  reauth_timeout      = var.efa_policyaccesstimeoutrule_reauth_timeout
  operator            = var.efa_policyaccesstimeoutrule_operator
  policy_set_id       = var.efa_policyaccesstimeoutrule_policy_set_id
  conditions {
    negated             = var.efa_policyaccesstimeoutrule_conditions_negated
    operator            = var.efa_policyaccesstimeoutrule_conditions_operator
    operands {
      object_type         = var.efa_policyaccesstimeoutrule_conditions_operands_object_type
      lhs                 = var.efa_policyaccesstimeoutrule_conditions_operands_lhs
      rhs                 = var.efa_policyaccesstimeoutrule_conditions_operands_rhs
    }
  }
}