output "db_instances_lookup_id" {
  description = "Map of id values across all db_instances_lookup, keyed the same as var.db_instances_lookup"
  value       = { for k, v in data.aws_db_instances.db_instances_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "db_instances_lookup_filter" {
  description = "Map of filter values across all db_instances_lookup, keyed the same as var.db_instances_lookup"
  value       = { for k, v in data.aws_db_instances.db_instances_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "db_instances_lookup_instance_arns" {
  description = "Map of instance_arns values across all db_instances_lookup, keyed the same as var.db_instances_lookup"
  value       = { for k, v in data.aws_db_instances.db_instances_lookup : k => v.instance_arns if v.instance_arns != null && length(v.instance_arns) > 0 }
}
output "db_instances_lookup_instance_identifiers" {
  description = "Map of instance_identifiers values across all db_instances_lookup, keyed the same as var.db_instances_lookup"
  value       = { for k, v in data.aws_db_instances.db_instances_lookup : k => v.instance_identifiers if v.instance_identifiers != null && length(v.instance_identifiers) > 0 }
}
output "db_instances_lookup_region" {
  description = "Map of region values across all db_instances_lookup, keyed the same as var.db_instances_lookup"
  value       = { for k, v in data.aws_db_instances.db_instances_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "db_instances_lookup_tags" {
  description = "Map of tags values across all db_instances_lookup, keyed the same as var.db_instances_lookup"
  value       = { for k, v in data.aws_db_instances.db_instances_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

