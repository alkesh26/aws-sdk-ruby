# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module ConfigService
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :configservice

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @!group API Operations

      # Deletes the specified AWS Config rule and all of its evaluation
      # results.
      #
      # AWS Config sets the state of a rule to `DELETING` until the deletion
      # is complete. You cannot update a rule while it is in this state. If
      # you make a `PutConfigRule` or `DeleteConfigRule` request for the rule,
      # you will receive a `ResourceInUseException`.
      #
      # You can check the state of a rule by using the `DescribeConfigRules`
      # request.
      # @option params [required, String] :config_rule_name
      #   The name of the AWS Config rule that you want to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_config_rule({
      #     config_rule_name: "StringWithCharLimit64", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_config_rule(params = {}, options = {})
        req = build_request(:delete_config_rule, params)
        req.send_request(options)
      end

      # Deletes the configuration recorder.
      #
      # After the configuration recorder is deleted, AWS Config will not
      # record resource configuration changes until you create a new
      # configuration recorder.
      #
      # This action does not delete the configuration information that was
      # previously recorded. You will be able to access the previously
      # recorded information by using the `GetResourceConfigHistory` action,
      # but you will not be able to access this information in the AWS Config
      # console until you create a new configuration recorder.
      # @option params [required, String] :configuration_recorder_name
      #   The name of the configuration recorder to be deleted. You can retrieve
      #   the name of your configuration recorder by using the
      #   `DescribeConfigurationRecorders` action.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_configuration_recorder({
      #     configuration_recorder_name: "RecorderName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_configuration_recorder(params = {}, options = {})
        req = build_request(:delete_configuration_recorder, params)
        req.send_request(options)
      end

      # Deletes the delivery channel.
      #
      # Before you can delete the delivery channel, you must stop the
      # configuration recorder by using the StopConfigurationRecorder action.
      # @option params [required, String] :delivery_channel_name
      #   The name of the delivery channel to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_delivery_channel({
      #     delivery_channel_name: "ChannelName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_delivery_channel(params = {}, options = {})
        req = build_request(:delete_delivery_channel, params)
        req.send_request(options)
      end

      # Deletes the evaluation results for the specified Config rule. You can
      # specify one Config rule per request. After you delete the evaluation
      # results, you can call the StartConfigRulesEvaluation API to start
      # evaluating your AWS resources against the rule.
      # @option params [required, String] :config_rule_name
      #   The name of the Config rule for which you want to delete the
      #   evaluation results.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_evaluation_results({
      #     config_rule_name: "StringWithCharLimit64", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_evaluation_results(params = {}, options = {})
        req = build_request(:delete_evaluation_results, params)
        req.send_request(options)
      end

      # Schedules delivery of a configuration snapshot to the Amazon S3 bucket
      # in the specified delivery channel. After the delivery has started, AWS
      # Config sends following notifications using an Amazon SNS topic that
      # you have specified.
      #
      # * Notification of starting the delivery.
      # * Notification of delivery completed, if the delivery was successfully
      #   completed.
      # * Notification of delivery failure, if the delivery failed to
      #   complete.
      # @option params [required, String] :delivery_channel_name
      #   The name of the delivery channel through which the snapshot is
      #   delivered.
      # @return [Types::DeliverConfigSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeliverConfigSnapshotResponse#config_snapshot_id #configSnapshotId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.deliver_config_snapshot({
      #     delivery_channel_name: "ChannelName", # required
      #   })
      #
      # @example Response structure
      #   resp.config_snapshot_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def deliver_config_snapshot(params = {}, options = {})
        req = build_request(:deliver_config_snapshot, params)
        req.send_request(options)
      end

      # Indicates whether the specified AWS Config rules are compliant. If a
      # rule is noncompliant, this action returns the number of AWS resources
      # that do not comply with the rule.
      #
      # A rule is compliant if all of the evaluated resources comply with it,
      # and it is noncompliant if any of these resources do not comply.
      #
      # If AWS Config has no current evaluation results for the rule, it
      # returns `INSUFFICIENT_DATA`. This result might indicate one of the
      # following conditions:
      #
      # * AWS Config has never invoked an evaluation for the rule. To check
      #   whether it has, use the `DescribeConfigRuleEvaluationStatus` action
      #   to get the `LastSuccessfulInvocationTime` and
      #   `LastFailedInvocationTime`.
      # * The rule\'s AWS Lambda function is failing to send evaluation
      #   results to AWS Config. Verify that the role that you assigned to
      #   your configuration recorder includes the `config:PutEvaluations`
      #   permission. If the rule is a custom rule, verify that the AWS Lambda
      #   execution role includes the `config:PutEvaluations` permission.
      # * The rule\'s AWS Lambda function has returned `NOT_APPLICABLE` for
      #   all evaluation results. This can occur if the resources were deleted
      #   or removed from the rule\'s scope.
      # @option params [Array<String>] :config_rule_names
      #   Specify one or more AWS Config rule names to filter the results by
      #   rule.
      # @option params [Array<String>] :compliance_types
      #   Filters the results by compliance.
      #
      #   The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and
      #   `INSUFFICIENT_DATA`.
      # @option params [String] :next_token
      #   The `nextToken` string returned on a previous page that you use to get
      #   the next page of results in a paginated response.
      # @return [Types::DescribeComplianceByConfigRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeComplianceByConfigRuleResponse#compliance_by_config_rules #ComplianceByConfigRules} => Array&lt;Types::ComplianceByConfigRule&gt;
      #   * {Types::DescribeComplianceByConfigRuleResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_compliance_by_config_rule({
      #     config_rule_names: ["StringWithCharLimit64"],
      #     compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
      #     next_token: "String",
      #   })
      #
      # @example Response structure
      #   resp.compliance_by_config_rules #=> Array
      #   resp.compliance_by_config_rules[0].config_rule_name #=> String
      #   resp.compliance_by_config_rules[0].compliance.compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"
      #   resp.compliance_by_config_rules[0].compliance.compliance_contributor_count.capped_count #=> Integer
      #   resp.compliance_by_config_rules[0].compliance.compliance_contributor_count.cap_exceeded #=> Boolean
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_compliance_by_config_rule(params = {}, options = {})
        req = build_request(:describe_compliance_by_config_rule, params)
        req.send_request(options)
      end

      # Indicates whether the specified AWS resources are compliant. If a
      # resource is noncompliant, this action returns the number of AWS Config
      # rules that the resource does not comply with.
      #
      # A resource is compliant if it complies with all the AWS Config rules
      # that evaluate it. It is noncompliant if it does not comply with one or
      # more of these rules.
      #
      # If AWS Config has no current evaluation results for the resource, it
      # returns `INSUFFICIENT_DATA`. This result might indicate one of the
      # following conditions about the rules that evaluate the resource:
      #
      # * AWS Config has never invoked an evaluation for the rule. To check
      #   whether it has, use the `DescribeConfigRuleEvaluationStatus` action
      #   to get the `LastSuccessfulInvocationTime` and
      #   `LastFailedInvocationTime`.
      # * The rule\'s AWS Lambda function is failing to send evaluation
      #   results to AWS Config. Verify that the role that you assigned to
      #   your configuration recorder includes the `config:PutEvaluations`
      #   permission. If the rule is a custom rule, verify that the AWS Lambda
      #   execution role includes the `config:PutEvaluations` permission.
      # * The rule\'s AWS Lambda function has returned `NOT_APPLICABLE` for
      #   all evaluation results. This can occur if the resources were deleted
      #   or removed from the rule\'s scope.
      # @option params [String] :resource_type
      #   The types of AWS resources for which you want compliance information;
      #   for example, `AWS::EC2::Instance`. For this action, you can specify
      #   that the resource type is an AWS account by specifying
      #   `AWS::::Account`.
      # @option params [String] :resource_id
      #   The ID of the AWS resource for which you want compliance information.
      #   You can specify only one resource ID. If you specify a resource ID,
      #   you must also specify a type for `ResourceType`.
      # @option params [Array<String>] :compliance_types
      #   Filters the results by compliance.
      #
      #   The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and
      #   `INSUFFICIENT_DATA`.
      # @option params [Integer] :limit
      #   The maximum number of evaluation results returned on each page. The
      #   default is 10. You cannot specify a limit greater than 100. If you
      #   specify 0, AWS Config uses the default.
      # @option params [String] :next_token
      #   The `nextToken` string returned on a previous page that you use to get
      #   the next page of results in a paginated response.
      # @return [Types::DescribeComplianceByResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeComplianceByResourceResponse#compliance_by_resources #ComplianceByResources} => Array&lt;Types::ComplianceByResource&gt;
      #   * {Types::DescribeComplianceByResourceResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_compliance_by_resource({
      #     resource_type: "StringWithCharLimit256",
      #     resource_id: "StringWithCharLimit256",
      #     compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
      #     limit: 1,
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.compliance_by_resources #=> Array
      #   resp.compliance_by_resources[0].resource_type #=> String
      #   resp.compliance_by_resources[0].resource_id #=> String
      #   resp.compliance_by_resources[0].compliance.compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"
      #   resp.compliance_by_resources[0].compliance.compliance_contributor_count.capped_count #=> Integer
      #   resp.compliance_by_resources[0].compliance.compliance_contributor_count.cap_exceeded #=> Boolean
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_compliance_by_resource(params = {}, options = {})
        req = build_request(:describe_compliance_by_resource, params)
        req.send_request(options)
      end

      # Returns status information for each of your AWS managed Config rules.
      # The status includes information such as the last time AWS Config
      # invoked the rule, the last time AWS Config failed to invoke the rule,
      # and the related error for the last failure.
      # @option params [Array<String>] :config_rule_names
      #   The name of the AWS managed Config rules for which you want status
      #   information. If you do not specify any names, AWS Config returns
      #   status information for all AWS managed Config rules that you use.
      # @return [Types::DescribeConfigRuleEvaluationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeConfigRuleEvaluationStatusResponse#config_rules_evaluation_status #ConfigRulesEvaluationStatus} => Array&lt;Types::ConfigRuleEvaluationStatus&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_config_rule_evaluation_status({
      #     config_rule_names: ["StringWithCharLimit64"],
      #   })
      #
      # @example Response structure
      #   resp.config_rules_evaluation_status #=> Array
      #   resp.config_rules_evaluation_status[0].config_rule_name #=> String
      #   resp.config_rules_evaluation_status[0].config_rule_arn #=> String
      #   resp.config_rules_evaluation_status[0].config_rule_id #=> String
      #   resp.config_rules_evaluation_status[0].last_successful_invocation_time #=> Time
      #   resp.config_rules_evaluation_status[0].last_failed_invocation_time #=> Time
      #   resp.config_rules_evaluation_status[0].last_successful_evaluation_time #=> Time
      #   resp.config_rules_evaluation_status[0].last_failed_evaluation_time #=> Time
      #   resp.config_rules_evaluation_status[0].first_activated_time #=> Time
      #   resp.config_rules_evaluation_status[0].last_error_code #=> String
      #   resp.config_rules_evaluation_status[0].last_error_message #=> String
      #   resp.config_rules_evaluation_status[0].first_evaluation_started #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_config_rule_evaluation_status(params = {}, options = {})
        req = build_request(:describe_config_rule_evaluation_status, params)
        req.send_request(options)
      end

      # Returns details about your AWS Config rules.
      # @option params [Array<String>] :config_rule_names
      #   The names of the AWS Config rules for which you want details. If you
      #   do not specify any names, AWS Config returns details for all your
      #   rules.
      # @option params [String] :next_token
      #   The `nextToken` string returned on a previous page that you use to get
      #   the next page of results in a paginated response.
      # @return [Types::DescribeConfigRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeConfigRulesResponse#config_rules #ConfigRules} => Array&lt;Types::ConfigRule&gt;
      #   * {Types::DescribeConfigRulesResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_config_rules({
      #     config_rule_names: ["StringWithCharLimit64"],
      #     next_token: "String",
      #   })
      #
      # @example Response structure
      #   resp.config_rules #=> Array
      #   resp.config_rules[0].config_rule_name #=> String
      #   resp.config_rules[0].config_rule_arn #=> String
      #   resp.config_rules[0].config_rule_id #=> String
      #   resp.config_rules[0].description #=> String
      #   resp.config_rules[0].scope.compliance_resource_types #=> Array
      #   resp.config_rules[0].scope.compliance_resource_types[0] #=> String
      #   resp.config_rules[0].scope.tag_key #=> String
      #   resp.config_rules[0].scope.tag_value #=> String
      #   resp.config_rules[0].scope.compliance_resource_id #=> String
      #   resp.config_rules[0].source.owner #=> String, one of "CUSTOM_LAMBDA", "AWS"
      #   resp.config_rules[0].source.source_identifier #=> String
      #   resp.config_rules[0].source.source_details #=> Array
      #   resp.config_rules[0].source.source_details[0].event_source #=> String, one of "aws.config"
      #   resp.config_rules[0].source.source_details[0].message_type #=> String, one of "ConfigurationItemChangeNotification", "ConfigurationSnapshotDeliveryCompleted", "ScheduledNotification"
      #   resp.config_rules[0].source.source_details[0].maximum_execution_frequency #=> String, one of "One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"
      #   resp.config_rules[0].input_parameters #=> String
      #   resp.config_rules[0].maximum_execution_frequency #=> String, one of "One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"
      #   resp.config_rules[0].config_rule_state #=> String, one of "ACTIVE", "DELETING", "DELETING_RESULTS", "EVALUATING"
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_config_rules(params = {}, options = {})
        req = build_request(:describe_config_rules, params)
        req.send_request(options)
      end

      # Returns the current status of the specified configuration recorder. If
      # a configuration recorder is not specified, this action returns the
      # status of all configuration recorder associated with the account.
      #
      # <note markdown="1"> Currently, you can specify only one configuration recorder per
      # account.
      #
      #  </note>
      # @option params [Array<String>] :configuration_recorder_names
      #   The name(s) of the configuration recorder. If the name is not
      #   specified, the action returns the current status of all the
      #   configuration recorders associated with the account.
      # @return [Types::DescribeConfigurationRecorderStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeConfigurationRecorderStatusResponse#configuration_recorders_status #ConfigurationRecordersStatus} => Array&lt;Types::ConfigurationRecorderStatus&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_configuration_recorder_status({
      #     configuration_recorder_names: ["RecorderName"],
      #   })
      #
      # @example Response structure
      #   resp.configuration_recorders_status #=> Array
      #   resp.configuration_recorders_status[0].name #=> String
      #   resp.configuration_recorders_status[0].last_start_time #=> Time
      #   resp.configuration_recorders_status[0].last_stop_time #=> Time
      #   resp.configuration_recorders_status[0].recording #=> Boolean
      #   resp.configuration_recorders_status[0].last_status #=> String, one of "Pending", "Success", "Failure"
      #   resp.configuration_recorders_status[0].last_error_code #=> String
      #   resp.configuration_recorders_status[0].last_error_message #=> String
      #   resp.configuration_recorders_status[0].last_status_change_time #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_configuration_recorder_status(params = {}, options = {})
        req = build_request(:describe_configuration_recorder_status, params)
        req.send_request(options)
      end

      # Returns the name of one or more specified configuration recorders. If
      # the recorder name is not specified, this action returns the names of
      # all the configuration recorders associated with the account.
      #
      # <note markdown="1"> Currently, you can specify only one configuration recorder per
      # account.
      #
      #  </note>
      # @option params [Array<String>] :configuration_recorder_names
      #   A list of configuration recorder names.
      # @return [Types::DescribeConfigurationRecordersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeConfigurationRecordersResponse#configuration_recorders #ConfigurationRecorders} => Array&lt;Types::ConfigurationRecorder&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_configuration_recorders({
      #     configuration_recorder_names: ["RecorderName"],
      #   })
      #
      # @example Response structure
      #   resp.configuration_recorders #=> Array
      #   resp.configuration_recorders[0].name #=> String
      #   resp.configuration_recorders[0].role_arn #=> String
      #   resp.configuration_recorders[0].recording_group.all_supported #=> Boolean
      #   resp.configuration_recorders[0].recording_group.include_global_resource_types #=> Boolean
      #   resp.configuration_recorders[0].recording_group.resource_types #=> Array
      #   resp.configuration_recorders[0].recording_group.resource_types[0] #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_configuration_recorders(params = {}, options = {})
        req = build_request(:describe_configuration_recorders, params)
        req.send_request(options)
      end

      # Returns the current status of the specified delivery channel. If a
      # delivery channel is not specified, this action returns the current
      # status of all delivery channels associated with the account.
      #
      # <note markdown="1"> Currently, you can specify only one delivery channel per account.
      #
      #  </note>
      # @option params [Array<String>] :delivery_channel_names
      #   A list of delivery channel names.
      # @return [Types::DescribeDeliveryChannelStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeDeliveryChannelStatusResponse#delivery_channels_status #DeliveryChannelsStatus} => Array&lt;Types::DeliveryChannelStatus&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_delivery_channel_status({
      #     delivery_channel_names: ["ChannelName"],
      #   })
      #
      # @example Response structure
      #   resp.delivery_channels_status #=> Array
      #   resp.delivery_channels_status[0].name #=> String
      #   resp.delivery_channels_status[0].config_snapshot_delivery_info.last_status #=> String, one of "Success", "Failure", "Not_Applicable"
      #   resp.delivery_channels_status[0].config_snapshot_delivery_info.last_error_code #=> String
      #   resp.delivery_channels_status[0].config_snapshot_delivery_info.last_error_message #=> String
      #   resp.delivery_channels_status[0].config_snapshot_delivery_info.last_attempt_time #=> Time
      #   resp.delivery_channels_status[0].config_snapshot_delivery_info.last_successful_time #=> Time
      #   resp.delivery_channels_status[0].config_snapshot_delivery_info.next_delivery_time #=> Time
      #   resp.delivery_channels_status[0].config_history_delivery_info.last_status #=> String, one of "Success", "Failure", "Not_Applicable"
      #   resp.delivery_channels_status[0].config_history_delivery_info.last_error_code #=> String
      #   resp.delivery_channels_status[0].config_history_delivery_info.last_error_message #=> String
      #   resp.delivery_channels_status[0].config_history_delivery_info.last_attempt_time #=> Time
      #   resp.delivery_channels_status[0].config_history_delivery_info.last_successful_time #=> Time
      #   resp.delivery_channels_status[0].config_history_delivery_info.next_delivery_time #=> Time
      #   resp.delivery_channels_status[0].config_stream_delivery_info.last_status #=> String, one of "Success", "Failure", "Not_Applicable"
      #   resp.delivery_channels_status[0].config_stream_delivery_info.last_error_code #=> String
      #   resp.delivery_channels_status[0].config_stream_delivery_info.last_error_message #=> String
      #   resp.delivery_channels_status[0].config_stream_delivery_info.last_status_change_time #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_delivery_channel_status(params = {}, options = {})
        req = build_request(:describe_delivery_channel_status, params)
        req.send_request(options)
      end

      # Returns details about the specified delivery channel. If a delivery
      # channel is not specified, this action returns the details of all
      # delivery channels associated with the account.
      #
      # <note markdown="1"> Currently, you can specify only one delivery channel per account.
      #
      #  </note>
      # @option params [Array<String>] :delivery_channel_names
      #   A list of delivery channel names.
      # @return [Types::DescribeDeliveryChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeDeliveryChannelsResponse#delivery_channels #DeliveryChannels} => Array&lt;Types::DeliveryChannel&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_delivery_channels({
      #     delivery_channel_names: ["ChannelName"],
      #   })
      #
      # @example Response structure
      #   resp.delivery_channels #=> Array
      #   resp.delivery_channels[0].name #=> String
      #   resp.delivery_channels[0].s3_bucket_name #=> String
      #   resp.delivery_channels[0].s3_key_prefix #=> String
      #   resp.delivery_channels[0].sns_topic_arn #=> String
      #   resp.delivery_channels[0].config_snapshot_delivery_properties.delivery_frequency #=> String, one of "One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_delivery_channels(params = {}, options = {})
        req = build_request(:describe_delivery_channels, params)
        req.send_request(options)
      end

      # Returns the evaluation results for the specified AWS Config rule. The
      # results indicate which AWS resources were evaluated by the rule, when
      # each resource was last evaluated, and whether each resource complies
      # with the rule.
      # @option params [required, String] :config_rule_name
      #   The name of the AWS Config rule for which you want compliance
      #   information.
      # @option params [Array<String>] :compliance_types
      #   Filters the results by compliance.
      #
      #   The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and
      #   `NOT_APPLICABLE`.
      # @option params [Integer] :limit
      #   The maximum number of evaluation results returned on each page. The
      #   default is 10. You cannot specify a limit greater than 100. If you
      #   specify 0, AWS Config uses the default.
      # @option params [String] :next_token
      #   The `nextToken` string returned on a previous page that you use to get
      #   the next page of results in a paginated response.
      # @return [Types::GetComplianceDetailsByConfigRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetComplianceDetailsByConfigRuleResponse#evaluation_results #EvaluationResults} => Array&lt;Types::EvaluationResult&gt;
      #   * {Types::GetComplianceDetailsByConfigRuleResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_compliance_details_by_config_rule({
      #     config_rule_name: "StringWithCharLimit64", # required
      #     compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
      #     limit: 1,
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.evaluation_results #=> Array
      #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.config_rule_name #=> String
      #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_type #=> String
      #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_id #=> String
      #   resp.evaluation_results[0].evaluation_result_identifier.ordering_timestamp #=> Time
      #   resp.evaluation_results[0].compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"
      #   resp.evaluation_results[0].result_recorded_time #=> Time
      #   resp.evaluation_results[0].config_rule_invoked_time #=> Time
      #   resp.evaluation_results[0].annotation #=> String
      #   resp.evaluation_results[0].result_token #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_compliance_details_by_config_rule(params = {}, options = {})
        req = build_request(:get_compliance_details_by_config_rule, params)
        req.send_request(options)
      end

      # Returns the evaluation results for the specified AWS resource. The
      # results indicate which AWS Config rules were used to evaluate the
      # resource, when each rule was last used, and whether the resource
      # complies with each rule.
      # @option params [required, String] :resource_type
      #   The type of the AWS resource for which you want compliance
      #   information.
      # @option params [required, String] :resource_id
      #   The ID of the AWS resource for which you want compliance information.
      # @option params [Array<String>] :compliance_types
      #   Filters the results by compliance.
      #
      #   The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and
      #   `NOT_APPLICABLE`.
      # @option params [String] :next_token
      #   The `nextToken` string returned on a previous page that you use to get
      #   the next page of results in a paginated response.
      # @return [Types::GetComplianceDetailsByResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetComplianceDetailsByResourceResponse#evaluation_results #EvaluationResults} => Array&lt;Types::EvaluationResult&gt;
      #   * {Types::GetComplianceDetailsByResourceResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_compliance_details_by_resource({
      #     resource_type: "StringWithCharLimit256", # required
      #     resource_id: "StringWithCharLimit256", # required
      #     compliance_types: ["COMPLIANT"], # accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
      #     next_token: "String",
      #   })
      #
      # @example Response structure
      #   resp.evaluation_results #=> Array
      #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.config_rule_name #=> String
      #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_type #=> String
      #   resp.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_id #=> String
      #   resp.evaluation_results[0].evaluation_result_identifier.ordering_timestamp #=> Time
      #   resp.evaluation_results[0].compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"
      #   resp.evaluation_results[0].result_recorded_time #=> Time
      #   resp.evaluation_results[0].config_rule_invoked_time #=> Time
      #   resp.evaluation_results[0].annotation #=> String
      #   resp.evaluation_results[0].result_token #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_compliance_details_by_resource(params = {}, options = {})
        req = build_request(:get_compliance_details_by_resource, params)
        req.send_request(options)
      end

      # Returns the number of AWS Config rules that are compliant and
      # noncompliant, up to a maximum of 25 for each.
      # @return [Types::GetComplianceSummaryByConfigRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetComplianceSummaryByConfigRuleResponse#compliance_summary #ComplianceSummary} => Types::ComplianceSummary
      #
      # @example Response structure
      #   resp.compliance_summary.compliant_resource_count.capped_count #=> Integer
      #   resp.compliance_summary.compliant_resource_count.cap_exceeded #=> Boolean
      #   resp.compliance_summary.non_compliant_resource_count.capped_count #=> Integer
      #   resp.compliance_summary.non_compliant_resource_count.cap_exceeded #=> Boolean
      #   resp.compliance_summary.compliance_summary_timestamp #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_compliance_summary_by_config_rule(params = {}, options = {})
        req = build_request(:get_compliance_summary_by_config_rule, params)
        req.send_request(options)
      end

      # Returns the number of resources that are compliant and the number that
      # are noncompliant. You can specify one or more resource types to get
      # these numbers for each resource type. The maximum number returned is
      # 100.
      # @option params [Array<String>] :resource_types
      #   Specify one or more resource types to get the number of resources that
      #   are compliant and the number that are noncompliant for each resource
      #   type.
      #
      #   For this request, you can specify an AWS resource type such as
      #   `AWS::EC2::Instance`, and you can specify that the resource type is an
      #   AWS account by specifying `AWS::::Account`.
      # @return [Types::GetComplianceSummaryByResourceTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetComplianceSummaryByResourceTypeResponse#compliance_summaries_by_resource_type #ComplianceSummariesByResourceType} => Array&lt;Types::ComplianceSummaryByResourceType&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_compliance_summary_by_resource_type({
      #     resource_types: ["StringWithCharLimit256"],
      #   })
      #
      # @example Response structure
      #   resp.compliance_summaries_by_resource_type #=> Array
      #   resp.compliance_summaries_by_resource_type[0].resource_type #=> String
      #   resp.compliance_summaries_by_resource_type[0].compliance_summary.compliant_resource_count.capped_count #=> Integer
      #   resp.compliance_summaries_by_resource_type[0].compliance_summary.compliant_resource_count.cap_exceeded #=> Boolean
      #   resp.compliance_summaries_by_resource_type[0].compliance_summary.non_compliant_resource_count.capped_count #=> Integer
      #   resp.compliance_summaries_by_resource_type[0].compliance_summary.non_compliant_resource_count.cap_exceeded #=> Boolean
      #   resp.compliance_summaries_by_resource_type[0].compliance_summary.compliance_summary_timestamp #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_compliance_summary_by_resource_type(params = {}, options = {})
        req = build_request(:get_compliance_summary_by_resource_type, params)
        req.send_request(options)
      end

      # Returns a list of configuration items for the specified resource. The
      # list contains details about each state of the resource during the
      # specified time interval.
      #
      # The response is paginated, and by default, AWS Config returns a limit
      # of 10 configuration items per page. You can customize this number with
      # the `limit` parameter. The response includes a `nextToken` string, and
      # to get the next page of results, run the request again and enter this
      # string for the `nextToken` parameter.
      #
      # <note markdown="1"> Each call to the API is limited to span a duration of seven days. It
      # is likely that the number of records returned is smaller than the
      # specified `limit`. In such cases, you can make another call, using the
      # `nextToken`.
      #
      #  </note>
      # @option params [required, String] :resource_type
      #   The resource type.
      # @option params [required, String] :resource_id
      #   The ID of the resource (for example., `sg-xxxxxx`).
      # @option params [Time,DateTime,Date,Integer,String] :later_time
      #   The time stamp that indicates a later time. If not specified, current
      #   time is taken.
      # @option params [Time,DateTime,Date,Integer,String] :earlier_time
      #   The time stamp that indicates an earlier time. If not specified, the
      #   action returns paginated results that contain configuration items that
      #   start from when the first configuration item was recorded.
      # @option params [String] :chronological_order
      #   The chronological order for configuration items listed. By default the
      #   results are listed in reverse chronological order.
      # @option params [Integer] :limit
      #   The maximum number of configuration items returned on each page. The
      #   default is 10. You cannot specify a limit greater than 100. If you
      #   specify 0, AWS Config uses the default.
      # @option params [String] :next_token
      #   The `nextToken` string returned on a previous page that you use to get
      #   the next page of results in a paginated response.
      # @return [Types::GetResourceConfigHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetResourceConfigHistoryResponse#configuration_items #configurationItems} => Array&lt;Types::ConfigurationItem&gt;
      #   * {Types::GetResourceConfigHistoryResponse#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_resource_config_history({
      #     resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer
      #     resource_id: "ResourceId", # required
      #     later_time: Time.now,
      #     earlier_time: Time.now,
      #     chronological_order: "Reverse", # accepts Reverse, Forward
      #     limit: 1,
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.configuration_items #=> Array
      #   resp.configuration_items[0].version #=> String
      #   resp.configuration_items[0].account_id #=> String
      #   resp.configuration_items[0].configuration_item_capture_time #=> Time
      #   resp.configuration_items[0].configuration_item_status #=> String, one of "Ok", "Failed", "Discovered", "Deleted"
      #   resp.configuration_items[0].configuration_state_id #=> String
      #   resp.configuration_items[0].configuration_item_md5_hash #=> String
      #   resp.configuration_items[0].arn #=> String
      #   resp.configuration_items[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer"
      #   resp.configuration_items[0].resource_id #=> String
      #   resp.configuration_items[0].resource_name #=> String
      #   resp.configuration_items[0].aws_region #=> String
      #   resp.configuration_items[0].availability_zone #=> String
      #   resp.configuration_items[0].resource_creation_time #=> Time
      #   resp.configuration_items[0].tags #=> Hash
      #   resp.configuration_items[0].tags["Name"] #=> String
      #   resp.configuration_items[0].related_events #=> Array
      #   resp.configuration_items[0].related_events[0] #=> String
      #   resp.configuration_items[0].relationships #=> Array
      #   resp.configuration_items[0].relationships[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer"
      #   resp.configuration_items[0].relationships[0].resource_id #=> String
      #   resp.configuration_items[0].relationships[0].resource_name #=> String
      #   resp.configuration_items[0].relationships[0].relationship_name #=> String
      #   resp.configuration_items[0].configuration #=> String
      #   resp.configuration_items[0].supplementary_configuration #=> Hash
      #   resp.configuration_items[0].supplementary_configuration["SupplementaryConfigurationName"] #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_resource_config_history(params = {}, options = {})
        req = build_request(:get_resource_config_history, params)
        req.send_request(options)
      end

      # Accepts a resource type and returns a list of resource identifiers for
      # the resources of that type. A resource identifier includes the
      # resource type, ID, and (if available) the custom resource name. The
      # results consist of resources that AWS Config has discovered, including
      # those that AWS Config is not currently recording. You can narrow the
      # results to include only resources that have specific resource IDs or a
      # resource name.
      #
      # <note markdown="1"> You can specify either resource IDs or a resource name but not both in
      # the same request.
      #
      #  </note>
      #
      # The response is paginated, and by default AWS Config lists 100
      # resource identifiers on each page. You can customize this number with
      # the `limit` parameter. The response includes a `nextToken` string, and
      # to get the next page of results, run the request again and enter this
      # string for the `nextToken` parameter.
      # @option params [required, String] :resource_type
      #   The type of resources that you want AWS Config to list in the
      #   response.
      # @option params [Array<String>] :resource_ids
      #   The IDs of only those resources that you want AWS Config to list in
      #   the response. If you do not specify this parameter, AWS Config lists
      #   all resources of the specified type that it has discovered.
      # @option params [String] :resource_name
      #   The custom name of only those resources that you want AWS Config to
      #   list in the response. If you do not specify this parameter, AWS Config
      #   lists all resources of the specified type that it has discovered.
      # @option params [Integer] :limit
      #   The maximum number of resource identifiers returned on each page. The
      #   default is 100. You cannot specify a limit greater than 100. If you
      #   specify 0, AWS Config uses the default.
      # @option params [Boolean] :include_deleted_resources
      #   Specifies whether AWS Config includes deleted resources in the
      #   results. By default, deleted resources are not included.
      # @option params [String] :next_token
      #   The `nextToken` string returned on a previous page that you use to get
      #   the next page of results in a paginated response.
      # @return [Types::ListDiscoveredResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListDiscoveredResourcesResponse#resource_identifiers #resourceIdentifiers} => Array&lt;Types::ResourceIdentifier&gt;
      #   * {Types::ListDiscoveredResourcesResponse#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_discovered_resources({
      #     resource_type: "AWS::EC2::CustomerGateway", # required, accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer
      #     resource_ids: ["ResourceId"],
      #     resource_name: "ResourceName",
      #     limit: 1,
      #     include_deleted_resources: false,
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.resource_identifiers #=> Array
      #   resp.resource_identifiers[0].resource_type #=> String, one of "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer"
      #   resp.resource_identifiers[0].resource_id #=> String
      #   resp.resource_identifiers[0].resource_name #=> String
      #   resp.resource_identifiers[0].resource_deletion_time #=> Time
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_discovered_resources(params = {}, options = {})
        req = build_request(:list_discovered_resources, params)
        req.send_request(options)
      end

      # Adds or updates an AWS Config rule for evaluating whether your AWS
      # resources comply with your desired configurations.
      #
      # You can use this action for custom Config rules and AWS managed Config
      # rules. A custom Config rule is a rule that you develop and maintain.
      # An AWS managed Config rule is a customizable, predefined rule that AWS
      # Config provides.
      #
      # If you are adding a new custom Config rule, you must first create the
      # AWS Lambda function that the rule invokes to evaluate your resources.
      # When you use the `PutConfigRule` action to add the rule to AWS Config,
      # you must specify the Amazon Resource Name (ARN) that AWS Lambda
      # assigns to the function. Specify the ARN for the `SourceIdentifier`
      # key. This key is part of the `Source` object, which is part of the
      # `ConfigRule` object.
      #
      # If you are adding a new AWS managed Config rule, specify the rule\'s
      # identifier for the `SourceIdentifier` key. To reference AWS managed
      # Config rule identifiers, see [Using AWS Managed Config Rules][1].
      #
      # For any new rule that you add, specify the `ConfigRuleName` in the
      # `ConfigRule` object. Do not specify the `ConfigRuleArn` or the
      # `ConfigRuleId`. These values are generated by AWS Config for new
      # rules.
      #
      # If you are updating a rule that you have added previously, specify the
      # rule\'s `ConfigRuleName`, `ConfigRuleId`, or `ConfigRuleArn` in the
      # `ConfigRule` data type that you use in this request.
      #
      # The maximum number of rules that AWS Config supports is 25.
      #
      # For more information about developing and using AWS Config rules, see
      # [Evaluating AWS Resource Configurations with AWS Config][2] in the
      # *AWS Config Developer Guide*.
      #
      #
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html
      # [2]: http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html
      # @option params [required, Types::ConfigRule] :config_rule
      #   An AWS Config rule represents an AWS Lambda function that you create
      #   for a custom rule or a predefined function for an AWS managed rule.
      #   The function evaluates configuration items to assess whether your AWS
      #   resources comply with your desired configurations. This function can
      #   run when AWS Config detects a configuration change to an AWS resource
      #   and at a periodic frequency that you choose (for example, every 24
      #   hours).
      #
      #   <note markdown="1"> You can use the AWS CLI and AWS SDKs if you want to create a rule that
      #   triggers evaluations for your resources when AWS Config delivers the
      #   configuration snapshot. For more information, see
      #   ConfigSnapshotDeliveryProperties.
      #
      #    </note>
      #
      #   For more information about developing and using AWS Config rules, see
      #   [Evaluating AWS Resource Configurations with AWS Config][1] in the
      #   *AWS Config Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_config_rule({
      #     config_rule: { # required
      #       config_rule_name: "StringWithCharLimit64",
      #       config_rule_arn: "String",
      #       config_rule_id: "String",
      #       description: "EmptiableStringWithCharLimit256",
      #       scope: {
      #         compliance_resource_types: ["StringWithCharLimit256"],
      #         tag_key: "StringWithCharLimit128",
      #         tag_value: "StringWithCharLimit256",
      #         compliance_resource_id: "StringWithCharLimit256",
      #       },
      #       source: { # required
      #         owner: "CUSTOM_LAMBDA", # accepts CUSTOM_LAMBDA, AWS
      #         source_identifier: "StringWithCharLimit256",
      #         source_details: [
      #           {
      #             event_source: "aws.config", # accepts aws.config
      #             message_type: "ConfigurationItemChangeNotification", # accepts ConfigurationItemChangeNotification, ConfigurationSnapshotDeliveryCompleted, ScheduledNotification
      #             maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
      #           },
      #         ],
      #       },
      #       input_parameters: "StringWithCharLimit256",
      #       maximum_execution_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
      #       config_rule_state: "ACTIVE", # accepts ACTIVE, DELETING, DELETING_RESULTS, EVALUATING
      #     },
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def put_config_rule(params = {}, options = {})
        req = build_request(:put_config_rule, params)
        req.send_request(options)
      end

      # Creates a new configuration recorder to record the selected resource
      # configurations.
      #
      # You can use this action to change the role `roleARN` and/or the
      # `recordingGroup` of an existing recorder. To change the role, call the
      # action on the existing configuration recorder and specify a role.
      #
      # <note markdown="1"> Currently, you can specify only one configuration recorder per
      # account.
      #
      #  If `ConfigurationRecorder` does not have the **recordingGroup**
      # parameter specified, the default is to record all supported resource
      # types.
      #
      #  </note>
      # @option params [required, Types::ConfigurationRecorder] :configuration_recorder
      #   The configuration recorder object that records each configuration
      #   change made to the resources.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_configuration_recorder({
      #     configuration_recorder: { # required
      #       name: "RecorderName",
      #       role_arn: "String",
      #       recording_group: {
      #         all_supported: false,
      #         include_global_resource_types: false,
      #         resource_types: ["AWS::EC2::CustomerGateway"], # accepts AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer
      #       },
      #     },
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def put_configuration_recorder(params = {}, options = {})
        req = build_request(:put_configuration_recorder, params)
        req.send_request(options)
      end

      # Creates a delivery channel object to deliver configuration information
      # to an Amazon S3 bucket and Amazon SNS topic.
      #
      # Before you can create a delivery channel, you must create a
      # configuration recorder.
      #
      # You can use this action to change the Amazon S3 bucket or an Amazon
      # SNS topic of the existing delivery channel. To change the Amazon S3
      # bucket or an Amazon SNS topic, call this action and specify the
      # changed values for the S3 bucket and the SNS topic. If you specify a
      # different value for either the S3 bucket or the SNS topic, this action
      # will keep the existing value for the parameter that is not changed.
      #
      # <note markdown="1"> You can have only one delivery channel per AWS account.
      #
      #  </note>
      # @option params [required, Types::DeliveryChannel] :delivery_channel
      #   The configuration delivery channel object that delivers the
      #   configuration information to an Amazon S3 bucket, and to an Amazon SNS
      #   topic.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_delivery_channel({
      #     delivery_channel: { # required
      #       name: "ChannelName",
      #       s3_bucket_name: "String",
      #       s3_key_prefix: "String",
      #       sns_topic_arn: "String",
      #       config_snapshot_delivery_properties: {
      #         delivery_frequency: "One_Hour", # accepts One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours
      #       },
      #     },
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def put_delivery_channel(params = {}, options = {})
        req = build_request(:put_delivery_channel, params)
        req.send_request(options)
      end

      # Used by an AWS Lambda function to deliver evaluation results to AWS
      # Config. This action is required in every AWS Lambda function that is
      # invoked by an AWS Config rule.
      # @option params [Array<Types::Evaluation>] :evaluations
      #   The assessments that the AWS Lambda function performs. Each evaluation
      #   identifies an AWS resource and indicates whether it complies with the
      #   AWS Config rule that invokes the AWS Lambda function.
      # @option params [required, String] :result_token
      #   An encrypted token that associates an evaluation with an AWS Config
      #   rule. Identifies the rule and the event that triggered the evaluation
      # @return [Types::PutEvaluationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PutEvaluationsResponse#failed_evaluations #FailedEvaluations} => Array&lt;Types::Evaluation&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_evaluations({
      #     evaluations: [
      #       {
      #         compliance_resource_type: "StringWithCharLimit256", # required
      #         compliance_resource_id: "StringWithCharLimit256", # required
      #         compliance_type: "COMPLIANT", # required, accepts COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
      #         annotation: "StringWithCharLimit256",
      #         ordering_timestamp: Time.now, # required
      #       },
      #     ],
      #     result_token: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.failed_evaluations #=> Array
      #   resp.failed_evaluations[0].compliance_resource_type #=> String
      #   resp.failed_evaluations[0].compliance_resource_id #=> String
      #   resp.failed_evaluations[0].compliance_type #=> String, one of "COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"
      #   resp.failed_evaluations[0].annotation #=> String
      #   resp.failed_evaluations[0].ordering_timestamp #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def put_evaluations(params = {}, options = {})
        req = build_request(:put_evaluations, params)
        req.send_request(options)
      end

      # Evaluates your resources against the specified Config rules. You can
      # specify up to 25 Config rules per request.
      #
      # An existing StartConfigRulesEvaluation call must complete for the
      # specified rules before you can call the API again. If you chose to
      # have AWS Config stream to an Amazon SNS topic, you will receive a
      # `ConfigRuleEvaluationStarted` notification when the evaluation starts.
      #
      # <note markdown="1"> You don\'t need to call the `StartConfigRulesEvaluation` API to run an
      # evaluation for a new rule. When you create a new rule, AWS Config
      # automatically evaluates your resources against the rule.
      #
      #  </note>
      #
      # The `StartConfigRulesEvaluation` API is useful if you want to run
      # on-demand evaluations, such as the following example:
      #
      # 1.  You have a custom rule that evaluates your IAM resources every 24
      #     hours.
      #
      # 2.  You update your Lambda function to add additional conditions to
      #     your rule.
      #
      # 3.  Instead of waiting for the next periodic evaluation, you call the
      #     `StartConfigRulesEvaluation` API.
      #
      # 4.  AWS Config invokes your Lambda function and evaluates your IAM
      #     resources.
      #
      # 5.  Your custom rule will still run periodic evaluations every 24
      #     hours.
      # @option params [Array<String>] :config_rule_names
      #   The list of names of Config rules that you want to run evaluations
      #   for.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.start_config_rules_evaluation({
      #     config_rule_names: ["StringWithCharLimit64"],
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def start_config_rules_evaluation(params = {}, options = {})
        req = build_request(:start_config_rules_evaluation, params)
        req.send_request(options)
      end

      # Starts recording configurations of the AWS resources you have selected
      # to record in your AWS account.
      #
      # You must have created at least one delivery channel to successfully
      # start the configuration recorder.
      # @option params [required, String] :configuration_recorder_name
      #   The name of the recorder object that records each configuration change
      #   made to the resources.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.start_configuration_recorder({
      #     configuration_recorder_name: "RecorderName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def start_configuration_recorder(params = {}, options = {})
        req = build_request(:start_configuration_recorder, params)
        req.send_request(options)
      end

      # Stops recording configurations of the AWS resources you have selected
      # to record in your AWS account.
      # @option params [required, String] :configuration_recorder_name
      #   The name of the recorder object that records each configuration change
      #   made to the resources.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.stop_configuration_recorder({
      #     configuration_recorder_name: "RecorderName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def stop_configuration_recorder(params = {}, options = {})
        req = build_request(:stop_configuration_recorder, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end