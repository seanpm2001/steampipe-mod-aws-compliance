benchmark "gxp_21_cfr_part_11_11_10" {
  title       = "Controls for closed systems"
  description = "Persons who use closed systems to create, modify, maintain, or transmit electronic records shall employ procedures and controls designed to ensure the authenticity, integrity, and, when appropriate, the confidentiality of electronic records, and to ensure that the signer cannot readily repudiate the signed record as not genuine. Such procedures and controls shall include the following benchmarks"
  children = [
    benchmark.gxp_21_cfr_part_11_11_10_a,
    benchmark.gxp_21_cfr_part_11_11_10_c,
    benchmark.gxp_21_cfr_part_11_11_10_d
  ]

  tags = local.gxp_21_cfr_part_11_common_tags
}

benchmark "gxp_21_cfr_part_11_11_10_a" {
  title       = "11.10(a)"
  description = "Persons who use closed systems to create, modify, maintain, or transmit electronic records shall employ procedures and controls designed to ensure the authenticity, integrity, and, when appropriate, the confidentiality of electronic records, and to ensure that the signer cannot readily repudiate the signed record as not genuine. Such procedures and controls shall include the following: (a) Validation of systems to ensure accuracy, reliability, consistent intended performance, and the ability to discern invalid or altered records."
  children = [
    control.cloudtrail_trail_validation_enabled,
    control.dynamodb_table_auto_scaling_enabled,
    control.dynamodb_table_in_backup_plan,
    control.dynamodb_table_point_in_time_recovery_enabled,
    control.ebs_volume_in_backup_plan,
    control.ebs_volume_unused,
    control.ec2_instance_ebs_optimized,
    control.ec2_instance_ssm_managed,
    control.ec2_stopped_instance_30_days,
    control.efs_file_system_in_backup_plan,
    control.elasticache_redis_cluster_automatic_backup_retention_15_days,
    control.elb_application_lb_deletion_protection_enabled,
    control.elb_classic_lb_cross_zone_load_balancing_enabled,
    control.rds_db_instance_backup_enabled,
    control.rds_db_instance_deletion_protection_enabled,
    control.rds_db_instance_in_backup_plan,
    control.rds_db_instance_multiple_az_enabled,
    control.redshift_cluster_automatic_snapshots_min_7_days,
    control.s3_bucket_cross_region_replication_enabled,
    control.s3_bucket_object_lock_enabled,
    control.s3_bucket_versioning_enabled,
    control.ssm_managed_instance_compliance_association_compliant,
    control.ssm_managed_instance_compliance_patch_compliant,
    control.vpc_vpn_tunnel_up
  ]

  tags = local.gxp_21_cfr_part_11_common_tags
}

benchmark "gxp_21_cfr_part_11_11_10_c" {
  title       = "11.10(c)"
  description = "Persons who use closed systems to create, modify, maintain, or transmit electronic records shall employ procedures and controls designed to ensure the authenticity, integrity, and, when appropriate, the confidentiality of electronic records, and to ensure that the signer cannot readily repudiate the signed record as not genuine. Such procedures and controls shall include the following: (c) Protection of records to enable their accurate and ready retrieval throughout the records retention period."
  children = [
    control.cloudtrail_trail_logs_encrypted_with_kms_cmk,
    control.cloudwatch_log_group_retention_period_365,
    control.rds_db_instance_encryption_at_rest_enabled,
    control.rds_db_snapshot_encrypted_at_rest,
    control.rds_db_snapshot_prohibit_public_access,
    control.redshift_cluster_encryption_in_transit_enabled,
    control.redshift_cluster_encryption_logging_enabled,
    control.redshift_cluster_kms_enabled,
    control.redshift_cluster_prohibit_public_access,
    control.s3_bucket_default_encryption_enabled,
    control.s3_bucket_enforces_ssl,
    control.s3_bucket_restrict_public_read_access,
    control.s3_bucket_restrict_public_write_access,
    control.s3_bucket_versioning_enabled,
    control.sagemaker_endpoint_configuration_encryption_at_rest_enabled,
    control.sagemaker_notebook_instance_direct_internet_access_disabled,
    control.sagemaker_notebook_instance_encryption_at_rest_enabled
  ]

  tags = local.gxp_21_cfr_part_11_common_tags
}

benchmark "gxp_21_cfr_part_11_11_10_d" {
  title       = "11.10(d)"
  description = "Persons who use closed systems to create, modify, maintain, or transmit electronic records shall employ procedures and controls designed to ensure the authenticity, integrity, and, when appropriate, the confidentiality of electronic records, and to ensure that the signer cannot readily repudiate the signed record as not genuine. Such procedures and controls shall include the following: (d) Limiting system access to authorized individuals."
  children = [
    control.account_part_of_organizations,
    control.dms_replication_instance_not_publicly_accessible,
    control.ebs_snapshot_not_publicly_restorable,
    control.ec2_instance_iam_profile_attached,
    control.ec2_instance_in_vpc,
    control.ec2_instance_not_publicly_accessible,
    control.ec2_instance_uses_imdsv2,
    control.ecs_task_definition_user_for_host_mode_check,
    control.emr_cluster_kerberos_enabled,
    control.emr_cluster_master_nodes_no_public_ip,
    control.es_domain_in_vpc,
    control.iam_account_password_policy_strong,
    control.iam_all_policy_no_service_wild_card,
    control.iam_group_not_empty,
    control.iam_group_user_role_no_inline_policies,
    control.iam_policy_custom_no_blocked_kms_actions,
    control.iam_policy_no_star_star,
    control.iam_root_user_hardware_mfa_enabled,
    control.iam_root_user_mfa_enabled,
    control.iam_root_user_no_access_keys,
    control.iam_user_access_key_age_90,
    control.iam_user_console_access_mfa_enabled,
    control.iam_user_in_group,
    control.iam_user_mfa_enabled,
    control.iam_user_no_inline_attached_policies,
    control.iam_user_unused_credentials_90,
    control.lambda_function_in_vpc,
    control.lambda_function_restrict_public_access,
    control.rds_db_instance_prohibit_public_access,
    control.rds_db_snapshot_prohibit_public_access,
    control.redshift_cluster_prohibit_public_access,
    control.s3_bucket_restrict_public_read_access,
    control.s3_bucket_restrict_public_write_access,
    control.s3_public_access_block_account,
    control.s3_public_access_block_bucket,
    control.sagemaker_notebook_instance_direct_internet_access_disabled,
    control.secretsmanager_secret_automatic_rotation_enabled,
    control.secretsmanager_secret_rotated_as_scheduled,
    control.vpc_default_security_group_restricts_all_traffic,
    control.vpc_igw_attached_to_authorized_vpc,
    control.vpc_route_table_restrict_public_access_to_igw,
    control.vpc_security_group_restrict_ingress_common_ports_all,
    control.vpc_security_group_restrict_ingress_ssh_all,
    control.vpc_security_group_restrict_ingress_tcp_udp_all,
    control.vpc_subnet_auto_assign_public_ip_disabled
  ]

  tags = local.gxp_21_cfr_part_11_common_tags
}
