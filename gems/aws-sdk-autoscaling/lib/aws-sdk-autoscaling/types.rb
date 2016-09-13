# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module AutoScaling
    module Types

      # Contains the output of DescribeScalingActivities.
      class ActivitiesType < Aws::Structure.new(
        :activities,
        :next_token)

        # @!attribute [rw] activities
        #   The scaling activities. Activities are sorted by start time.
        #   Activities still in progress are described first.
        #   @return [Array<Types::Activity>]

        # @!attribute [rw] next_token
        #   The token to use when requesting the next set of items. If there are
        #   no additional items to return, the string is empty.
        #   @return [String]

      end

      # Describes scaling activity, which is a long-running process that
      # represents a change to your Auto Scaling group, such as changing its
      # size or replacing an instance.
      class Activity < Aws::Structure.new(
        :activity_id,
        :auto_scaling_group_name,
        :description,
        :cause,
        :start_time,
        :end_time,
        :status_code,
        :status_message,
        :progress,
        :details)

        # @!attribute [rw] activity_id
        #   The ID of the activity.
        #   @return [String]

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group.
        #   @return [String]

        # @!attribute [rw] description
        #   A friendly, more verbose description of the activity.
        #   @return [String]

        # @!attribute [rw] cause
        #   The reason the activity began.
        #   @return [String]

        # @!attribute [rw] start_time
        #   The start time of the activity.
        #   @return [Time]

        # @!attribute [rw] end_time
        #   The end time of the activity.
        #   @return [Time]

        # @!attribute [rw] status_code
        #   The current status of the activity.
        #   @return [String]

        # @!attribute [rw] status_message
        #   A friendly, more verbose description of the activity status.
        #   @return [String]

        # @!attribute [rw] progress
        #   A value between 0 and 100 that indicates the progress of the
        #   activity.
        #   @return [Integer]

        # @!attribute [rw] details
        #   The details about the activity.
        #   @return [String]

      end

      # Contains the output of TerminateInstancesInAutoScalingGroup.
      class ActivityType < Aws::Structure.new(
        :activity)

        # @!attribute [rw] activity
        #   A scaling activity.
        #   @return [Types::Activity]

      end

      # Describes a policy adjustment type.
      #
      # For more information, see [Dynamic Scaling][1] in the *Auto Scaling
      # User Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/as-scale-based-on-demand.html
      class AdjustmentType < Aws::Structure.new(
        :adjustment_type)

        # @!attribute [rw] adjustment_type
        #   The policy adjustment type. The valid values are `ChangeInCapacity`,
        #   `ExactCapacity`, and `PercentChangeInCapacity`.
        #   @return [String]

      end

      # Describes an alarm.
      class Alarm < Aws::Structure.new(
        :alarm_name,
        :alarm_arn)

        # @!attribute [rw] alarm_name
        #   The name of the alarm.
        #   @return [String]

        # @!attribute [rw] alarm_arn
        #   The Amazon Resource Name (ARN) of the alarm.
        #   @return [String]

      end

      # Contains the parameters for AttachInstances.
      # @note When making an API call, pass AttachInstancesQuery
      #   data as a hash:
      #
      #       {
      #         instance_ids: ["XmlStringMaxLen19"],
      #         auto_scaling_group_name: "ResourceName", # required
      #       }
      class AttachInstancesQuery < Aws::Structure.new(
        :instance_ids,
        :auto_scaling_group_name)

        # @!attribute [rw] instance_ids
        #   One or more instance IDs.
        #   @return [Array<String>]

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the group.
        #   @return [String]

      end

      class AttachLoadBalancerTargetGroupsResultType < Aws::EmptyStructure; end

      # Contains the parameters for AttachLoadBalancerTargetGroups.
      # @note When making an API call, pass AttachLoadBalancerTargetGroupsType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         target_group_arns: ["XmlStringMaxLen511"], # required
      #       }
      class AttachLoadBalancerTargetGroupsType < Aws::Structure.new(
        :auto_scaling_group_name,
        :target_group_arns)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group.
        #   @return [String]

        # @!attribute [rw] target_group_arns
        #   The Amazon Resource Names (ARN) of the target groups.
        #   @return [Array<String>]

      end

      # Contains the output of AttachLoadBalancers.
      class AttachLoadBalancersResultType < Aws::EmptyStructure; end

      # Contains the parameters for AttachLoadBalancers.
      # @note When making an API call, pass AttachLoadBalancersType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         load_balancer_names: ["XmlStringMaxLen255"], # required
      #       }
      class AttachLoadBalancersType < Aws::Structure.new(
        :auto_scaling_group_name,
        :load_balancer_names)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the group.
        #   @return [String]

        # @!attribute [rw] load_balancer_names
        #   One or more load balancer names.
        #   @return [Array<String>]

      end

      # Describes an Auto Scaling group.
      class AutoScalingGroup < Aws::Structure.new(
        :auto_scaling_group_name,
        :auto_scaling_group_arn,
        :launch_configuration_name,
        :min_size,
        :max_size,
        :desired_capacity,
        :default_cooldown,
        :availability_zones,
        :load_balancer_names,
        :target_group_arns,
        :health_check_type,
        :health_check_grace_period,
        :instances,
        :created_time,
        :suspended_processes,
        :placement_group,
        :vpc_zone_identifier,
        :enabled_metrics,
        :status,
        :tags,
        :termination_policies,
        :new_instances_protected_from_scale_in)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the group.
        #   @return [String]

        # @!attribute [rw] auto_scaling_group_arn
        #   The Amazon Resource Name (ARN) of the group.
        #   @return [String]

        # @!attribute [rw] launch_configuration_name
        #   The name of the associated launch configuration.
        #   @return [String]

        # @!attribute [rw] min_size
        #   The minimum size of the group.
        #   @return [Integer]

        # @!attribute [rw] max_size
        #   The maximum size of the group.
        #   @return [Integer]

        # @!attribute [rw] desired_capacity
        #   The desired size of the group.
        #   @return [Integer]

        # @!attribute [rw] default_cooldown
        #   The amount of time, in seconds, after a scaling activity completes
        #   before another scaling activity can start.
        #   @return [Integer]

        # @!attribute [rw] availability_zones
        #   One or more Availability Zones for the group.
        #   @return [Array<String>]

        # @!attribute [rw] load_balancer_names
        #   One or more load balancers associated with the group.
        #   @return [Array<String>]

        # @!attribute [rw] target_group_arns
        #   The Amazon Resource Names (ARN) of the target groups for your load
        #   balancer.
        #   @return [Array<String>]

        # @!attribute [rw] health_check_type
        #   The service to use for the health checks. The valid values are `EC2`
        #   and `ELB`.
        #   @return [String]

        # @!attribute [rw] health_check_grace_period
        #   The amount of time, in seconds, that Auto Scaling waits before
        #   checking the health status of an EC2 instance that has come into
        #   service.
        #   @return [Integer]

        # @!attribute [rw] instances
        #   The EC2 instances associated with the group.
        #   @return [Array<Types::Instance>]

        # @!attribute [rw] created_time
        #   The date and time the group was created.
        #   @return [Time]

        # @!attribute [rw] suspended_processes
        #   The suspended processes associated with the group.
        #   @return [Array<Types::SuspendedProcess>]

        # @!attribute [rw] placement_group
        #   The name of the placement group into which you\'ll launch your
        #   instances, if any. For more information, see [Placement Groups][1]
        #   in the *Amazon Elastic Compute Cloud User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
        #   @return [String]

        # @!attribute [rw] vpc_zone_identifier
        #   One or more subnet IDs, if applicable, separated by commas.
        #
        #   If you specify `VPCZoneIdentifier` and `AvailabilityZones`, ensure
        #   that the Availability Zones of the subnets match the values for
        #   `AvailabilityZones`.
        #   @return [String]

        # @!attribute [rw] enabled_metrics
        #   The metrics enabled for the group.
        #   @return [Array<Types::EnabledMetric>]

        # @!attribute [rw] status
        #   The current state of the group when DeleteAutoScalingGroup is in
        #   progress.
        #   @return [String]

        # @!attribute [rw] tags
        #   The tags for the group.
        #   @return [Array<Types::TagDescription>]

        # @!attribute [rw] termination_policies
        #   The termination policies for the group.
        #   @return [Array<String>]

        # @!attribute [rw] new_instances_protected_from_scale_in
        #   Indicates whether newly launched instances are protected from
        #   termination by Auto Scaling when scaling in.
        #   @return [Boolean]

      end

      # Contains the parameters for DescribeAutoScalingGroups.
      # @note When making an API call, pass AutoScalingGroupNamesType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_names: ["ResourceName"],
      #         next_token: "XmlString",
      #         max_records: 1,
      #       }
      class AutoScalingGroupNamesType < Aws::Structure.new(
        :auto_scaling_group_names,
        :next_token,
        :max_records)

        # @!attribute [rw] auto_scaling_group_names
        #   The group names. If you omit this parameter, all Auto Scaling groups
        #   are described.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   The token for the next set of items to return. (You received this
        #   token from a previous call.)
        #   @return [String]

        # @!attribute [rw] max_records
        #   The maximum number of items to return with this call.
        #   @return [Integer]

      end

      # Contains the output for DescribeAutoScalingGroups.
      class AutoScalingGroupsType < Aws::Structure.new(
        :auto_scaling_groups,
        :next_token)

        # @!attribute [rw] auto_scaling_groups
        #   The groups.
        #   @return [Array<Types::AutoScalingGroup>]

        # @!attribute [rw] next_token
        #   The token to use when requesting the next set of items. If there are
        #   no additional items to return, the string is empty.
        #   @return [String]

      end

      # Describes an EC2 instance associated with an Auto Scaling group.
      class AutoScalingInstanceDetails < Aws::Structure.new(
        :instance_id,
        :auto_scaling_group_name,
        :availability_zone,
        :lifecycle_state,
        :health_status,
        :launch_configuration_name,
        :protected_from_scale_in)

        # @!attribute [rw] instance_id
        #   The ID of the instance.
        #   @return [String]

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group associated with the instance.
        #   @return [String]

        # @!attribute [rw] availability_zone
        #   The Availability Zone for the instance.
        #   @return [String]

        # @!attribute [rw] lifecycle_state
        #   The lifecycle state for the instance. For more information, see
        #   [Auto Scaling Lifecycle][1] in the *Auto Scaling User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/AutoScalingGroupLifecycle.html
        #   @return [String]

        # @!attribute [rw] health_status
        #   The last reported health status of this instance. \"Healthy\" means
        #   that the instance is healthy and should remain in service.
        #   \"Unhealthy\" means that the instance is unhealthy and Auto Scaling
        #   should terminate and replace it.
        #   @return [String]

        # @!attribute [rw] launch_configuration_name
        #   The launch configuration associated with the instance.
        #   @return [String]

        # @!attribute [rw] protected_from_scale_in
        #   Indicates whether the instance is protected from termination by Auto
        #   Scaling when scaling in.
        #   @return [Boolean]

      end

      # Contains the output of DescribeAutoScalingInstances.
      class AutoScalingInstancesType < Aws::Structure.new(
        :auto_scaling_instances,
        :next_token)

        # @!attribute [rw] auto_scaling_instances
        #   The instances.
        #   @return [Array<Types::AutoScalingInstanceDetails>]

        # @!attribute [rw] next_token
        #   The token to use when requesting the next set of items. If there are
        #   no additional items to return, the string is empty.
        #   @return [String]

      end

      # Describes a block device mapping.
      # @note When making an API call, pass BlockDeviceMapping
      #   data as a hash:
      #
      #       {
      #         virtual_name: "XmlStringMaxLen255",
      #         device_name: "XmlStringMaxLen255", # required
      #         ebs: {
      #           snapshot_id: "XmlStringMaxLen255",
      #           volume_size: 1,
      #           volume_type: "BlockDeviceEbsVolumeType",
      #           delete_on_termination: false,
      #           iops: 1,
      #           encrypted: false,
      #         },
      #         no_device: false,
      #       }
      class BlockDeviceMapping < Aws::Structure.new(
        :virtual_name,
        :device_name,
        :ebs,
        :no_device)

        # @!attribute [rw] virtual_name
        #   The name of the virtual device (for example, `ephemeral0`).
        #   @return [String]

        # @!attribute [rw] device_name
        #   The device name exposed to the EC2 instance (for example, `/dev/sdh`
        #   or `xvdh`).
        #   @return [String]

        # @!attribute [rw] ebs
        #   The information about the Amazon EBS volume.
        #   @return [Types::Ebs]

        # @!attribute [rw] no_device
        #   Suppresses a device mapping.
        #
        #   If this parameter is true for the root device, the instance might
        #   fail the EC2 health check. Auto Scaling launches a replacement
        #   instance if the instance fails the health check.
        #   @return [Boolean]

      end

      # Contains the output of CompleteLifecycleAction.
      class CompleteLifecycleActionAnswer < Aws::EmptyStructure; end

      # Contains the parameters for CompleteLifecycleAction.
      # @note When making an API call, pass CompleteLifecycleActionType
      #   data as a hash:
      #
      #       {
      #         lifecycle_hook_name: "AsciiStringMaxLen255", # required
      #         auto_scaling_group_name: "ResourceName", # required
      #         lifecycle_action_token: "LifecycleActionToken",
      #         lifecycle_action_result: "LifecycleActionResult", # required
      #         instance_id: "XmlStringMaxLen19",
      #       }
      class CompleteLifecycleActionType < Aws::Structure.new(
        :lifecycle_hook_name,
        :auto_scaling_group_name,
        :lifecycle_action_token,
        :lifecycle_action_result,
        :instance_id)

        # @!attribute [rw] lifecycle_hook_name
        #   The name of the lifecycle hook.
        #   @return [String]

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the group for the lifecycle hook.
        #   @return [String]

        # @!attribute [rw] lifecycle_action_token
        #   A universally unique identifier (UUID) that identifies a specific
        #   lifecycle action associated with an instance. Auto Scaling sends
        #   this token to the notification target you specified when you created
        #   the lifecycle hook.
        #   @return [String]

        # @!attribute [rw] lifecycle_action_result
        #   The action for the group to take. This parameter can be either
        #   `CONTINUE` or `ABANDON`.
        #   @return [String]

        # @!attribute [rw] instance_id
        #   The ID of the instance.
        #   @return [String]

      end

      # Contains the parameters for CreateAutoScalingGroup.
      # @note When making an API call, pass CreateAutoScalingGroupType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "XmlStringMaxLen255", # required
      #         launch_configuration_name: "ResourceName",
      #         instance_id: "XmlStringMaxLen19",
      #         min_size: 1, # required
      #         max_size: 1, # required
      #         desired_capacity: 1,
      #         default_cooldown: 1,
      #         availability_zones: ["XmlStringMaxLen255"],
      #         load_balancer_names: ["XmlStringMaxLen255"],
      #         target_group_arns: ["XmlStringMaxLen511"],
      #         health_check_type: "XmlStringMaxLen32",
      #         health_check_grace_period: 1,
      #         placement_group: "XmlStringMaxLen255",
      #         vpc_zone_identifier: "XmlStringMaxLen2047",
      #         termination_policies: ["XmlStringMaxLen1600"],
      #         new_instances_protected_from_scale_in: false,
      #         tags: [
      #           {
      #             resource_id: "XmlString",
      #             resource_type: "XmlString",
      #             key: "TagKey", # required
      #             value: "TagValue",
      #             propagate_at_launch: false,
      #           },
      #         ],
      #       }
      class CreateAutoScalingGroupType < Aws::Structure.new(
        :auto_scaling_group_name,
        :launch_configuration_name,
        :instance_id,
        :min_size,
        :max_size,
        :desired_capacity,
        :default_cooldown,
        :availability_zones,
        :load_balancer_names,
        :target_group_arns,
        :health_check_type,
        :health_check_grace_period,
        :placement_group,
        :vpc_zone_identifier,
        :termination_policies,
        :new_instances_protected_from_scale_in,
        :tags)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the group. This name must be unique within the scope of
        #   your AWS account.
        #   @return [String]

        # @!attribute [rw] launch_configuration_name
        #   The name of the launch configuration. Alternatively, specify an EC2
        #   instance instead of a launch configuration.
        #   @return [String]

        # @!attribute [rw] instance_id
        #   The ID of the instance used to create a launch configuration for the
        #   group. Alternatively, specify a launch configuration instead of an
        #   EC2 instance.
        #
        #   When you specify an ID of an instance, Auto Scaling creates a new
        #   launch configuration and associates it with the group. This launch
        #   configuration derives its attributes from the specified instance,
        #   with the exception of the block device mapping.
        #
        #   For more information, see [Create an Auto Scaling Group Using an EC2
        #   Instance][1] in the *Auto Scaling User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/create-asg-from-instance.html
        #   @return [String]

        # @!attribute [rw] min_size
        #   The minimum size of the group.
        #   @return [Integer]

        # @!attribute [rw] max_size
        #   The maximum size of the group.
        #   @return [Integer]

        # @!attribute [rw] desired_capacity
        #   The number of EC2 instances that should be running in the group.
        #   This number must be greater than or equal to the minimum size of the
        #   group and less than or equal to the maximum size of the group.
        #   @return [Integer]

        # @!attribute [rw] default_cooldown
        #   The amount of time, in seconds, after a scaling activity completes
        #   before another scaling activity can start. The default is 300.
        #
        #   For more information, see [Auto Scaling Cooldowns][1] in the *Auto
        #   Scaling User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/Cooldown.html
        #   @return [Integer]

        # @!attribute [rw] availability_zones
        #   One or more Availability Zones for the group. This parameter is
        #   optional if you specify one or more subnets.
        #   @return [Array<String>]

        # @!attribute [rw] load_balancer_names
        #   One or more Classic load balancers. To specify an Application load
        #   balancer, use `TargetGroupARNs` instead.
        #
        #   For more information, see [Using a Load Balancer With an Auto
        #   Scaling Group][1] in the *Auto Scaling User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/US_SetUpASLBApp.html
        #   @return [Array<String>]

        # @!attribute [rw] target_group_arns
        #   The Amazon Resource Names (ARN) of the target groups.
        #   @return [Array<String>]

        # @!attribute [rw] health_check_type
        #   The service to use for the health checks. The valid values are `EC2`
        #   and `ELB`.
        #
        #   By default, health checks use Amazon EC2 instance status checks to
        #   determine the health of an instance. For more information, see
        #   [Health Checks][1] in the *Auto Scaling User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/healthcheck.html
        #   @return [String]

        # @!attribute [rw] health_check_grace_period
        #   The amount of time, in seconds, that Auto Scaling waits before
        #   checking the health status of an EC2 instance that has come into
        #   service. During this time, any health check failures for the
        #   instance are ignored. The default is 0.
        #
        #   This parameter is required if you are adding an `ELB` health check.
        #
        #   For more information, see [Health Checks][1] in the *Auto Scaling
        #   User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/healthcheck.html
        #   @return [Integer]

        # @!attribute [rw] placement_group
        #   The name of the placement group into which you\'ll launch your
        #   instances, if any. For more information, see [Placement Groups][1]
        #   in the *Amazon Elastic Compute Cloud User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
        #   @return [String]

        # @!attribute [rw] vpc_zone_identifier
        #   A comma-separated list of subnet identifiers for your virtual
        #   private cloud (VPC).
        #
        #   If you specify subnets and Availability Zones with this call, ensure
        #   that the subnets\' Availability Zones match the Availability Zones
        #   specified.
        #
        #   For more information, see [Launching Auto Scaling Instances in a
        #   VPC][1] in the *Auto Scaling User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/asg-in-vpc.html
        #   @return [String]

        # @!attribute [rw] termination_policies
        #   One or more termination policies used to select the instance to
        #   terminate. These policies are executed in the order that they are
        #   listed.
        #
        #   For more information, see [Controlling Which Instances Auto Scaling
        #   Terminates During Scale In][1] in the *Auto Scaling User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/AutoScalingBehavior.InstanceTermination.html
        #   @return [Array<String>]

        # @!attribute [rw] new_instances_protected_from_scale_in
        #   Indicates whether newly launched instances are protected from
        #   termination by Auto Scaling when scaling in.
        #   @return [Boolean]

        # @!attribute [rw] tags
        #   One or more tags.
        #
        #   For more information, see [Tagging Auto Scaling Groups and
        #   Instances][1] in the *Auto Scaling User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/ASTagging.html
        #   @return [Array<Types::Tag>]

      end

      # Contains the parameters for CreateLaunchConfiguration.
      # @note When making an API call, pass CreateLaunchConfigurationType
      #   data as a hash:
      #
      #       {
      #         launch_configuration_name: "XmlStringMaxLen255", # required
      #         image_id: "XmlStringMaxLen255",
      #         key_name: "XmlStringMaxLen255",
      #         security_groups: ["XmlString"],
      #         classic_link_vpc_id: "XmlStringMaxLen255",
      #         classic_link_vpc_security_groups: ["XmlStringMaxLen255"],
      #         user_data: "XmlStringUserData",
      #         instance_id: "XmlStringMaxLen19",
      #         instance_type: "XmlStringMaxLen255",
      #         kernel_id: "XmlStringMaxLen255",
      #         ramdisk_id: "XmlStringMaxLen255",
      #         block_device_mappings: [
      #           {
      #             virtual_name: "XmlStringMaxLen255",
      #             device_name: "XmlStringMaxLen255", # required
      #             ebs: {
      #               snapshot_id: "XmlStringMaxLen255",
      #               volume_size: 1,
      #               volume_type: "BlockDeviceEbsVolumeType",
      #               delete_on_termination: false,
      #               iops: 1,
      #               encrypted: false,
      #             },
      #             no_device: false,
      #           },
      #         ],
      #         instance_monitoring: {
      #           enabled: false,
      #         },
      #         spot_price: "SpotPrice",
      #         iam_instance_profile: "XmlStringMaxLen1600",
      #         ebs_optimized: false,
      #         associate_public_ip_address: false,
      #         placement_tenancy: "XmlStringMaxLen64",
      #       }
      class CreateLaunchConfigurationType < Aws::Structure.new(
        :launch_configuration_name,
        :image_id,
        :key_name,
        :security_groups,
        :classic_link_vpc_id,
        :classic_link_vpc_security_groups,
        :user_data,
        :instance_id,
        :instance_type,
        :kernel_id,
        :ramdisk_id,
        :block_device_mappings,
        :instance_monitoring,
        :spot_price,
        :iam_instance_profile,
        :ebs_optimized,
        :associate_public_ip_address,
        :placement_tenancy)

        # @!attribute [rw] launch_configuration_name
        #   The name of the launch configuration. This name must be unique
        #   within the scope of your AWS account.
        #   @return [String]

        # @!attribute [rw] image_id
        #   The ID of the Amazon Machine Image (AMI) to use to launch your EC2
        #   instances. For more information, see [Finding an AMI][1] in the
        #   *Amazon Elastic Compute Cloud User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html
        #   @return [String]

        # @!attribute [rw] key_name
        #   The name of the key pair. For more information, see [Amazon EC2 Key
        #   Pairs][1] in the *Amazon Elastic Compute Cloud User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
        #   @return [String]

        # @!attribute [rw] security_groups
        #   One or more security groups with which to associate the instances.
        #
        #   If your instances are launched in EC2-Classic, you can either
        #   specify security group names or the security group IDs. For more
        #   information about security groups for EC2-Classic, see [Amazon EC2
        #   Security Groups][1] in the *Amazon Elastic Compute Cloud User
        #   Guide*.
        #
        #   If your instances are launched into a VPC, specify security group
        #   IDs. For more information, see [Security Groups for Your VPC][2] in
        #   the *Amazon Virtual Private Cloud User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html
        #   [2]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html
        #   @return [Array<String>]

        # @!attribute [rw] classic_link_vpc_id
        #   The ID of a ClassicLink-enabled VPC to link your EC2-Classic
        #   instances to. This parameter is supported only if you are launching
        #   EC2-Classic instances. For more information, see [ClassicLink][1] in
        #   the *Amazon Elastic Compute Cloud User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
        #   @return [String]

        # @!attribute [rw] classic_link_vpc_security_groups
        #   The IDs of one or more security groups for the specified
        #   ClassicLink-enabled VPC. This parameter is required if you specify a
        #   ClassicLink-enabled VPC, and is not supported otherwise. For more
        #   information, see [ClassicLink][1] in the *Amazon Elastic Compute
        #   Cloud User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
        #   @return [Array<String>]

        # @!attribute [rw] user_data
        #   The user data to make available to the launched EC2 instances. For
        #   more information, see [Instance Metadata and User Data][1] in the
        #   *Amazon Elastic Compute Cloud User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html
        #   @return [String]

        # @!attribute [rw] instance_id
        #   The ID of the instance to use to create the launch configuration.
        #
        #   The new launch configuration derives attributes from the instance,
        #   with the exception of the block device mapping.
        #
        #   To create a launch configuration with a block device mapping or
        #   override any other instance attributes, specify them as part of the
        #   same request.
        #
        #   For more information, see [Create a Launch Configuration Using an
        #   EC2 Instance][1] in the *Auto Scaling User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/create-lc-with-instanceID.html
        #   @return [String]

        # @!attribute [rw] instance_type
        #   The instance type of the EC2 instance. For information about
        #   available instance types, see [ Available Instance Types][1] in the
        #   *Amazon Elastic Compute Cloud User Guide.*
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes
        #   @return [String]

        # @!attribute [rw] kernel_id
        #   The ID of the kernel associated with the AMI.
        #   @return [String]

        # @!attribute [rw] ramdisk_id
        #   The ID of the RAM disk associated with the AMI.
        #   @return [String]

        # @!attribute [rw] block_device_mappings
        #   One or more mappings that specify how block devices are exposed to
        #   the instance. For more information, see [Block Device Mapping][1] in
        #   the *Amazon Elastic Compute Cloud User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html
        #   @return [Array<Types::BlockDeviceMapping>]

        # @!attribute [rw] instance_monitoring
        #   Enables detailed monitoring (`true`) or basic monitoring (`false`)
        #   for the Auto Scaling instances.
        #   @return [Types::InstanceMonitoring]

        # @!attribute [rw] spot_price
        #   The maximum hourly price to be paid for any Spot Instance launched
        #   to fulfill the request. Spot Instances are launched when the price
        #   you specify exceeds the current Spot market price. For more
        #   information, see [Launching Spot Instances in Your Auto Scaling
        #   Group][1] in the *Auto Scaling User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/US-SpotInstances.html
        #   @return [String]

        # @!attribute [rw] iam_instance_profile
        #   The name or the Amazon Resource Name (ARN) of the instance profile
        #   associated with the IAM role for the instance.
        #
        #   EC2 instances launched with an IAM role will automatically have AWS
        #   security credentials available. You can use IAM roles with Auto
        #   Scaling to automatically enable applications running on your EC2
        #   instances to securely access other AWS resources. For more
        #   information, see [Launch Auto Scaling Instances with an IAM Role][1]
        #   in the *Auto Scaling User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/us-iam-role.html
        #   @return [String]

        # @!attribute [rw] ebs_optimized
        #   Indicates whether the instance is optimized for Amazon EBS I/O. By
        #   default, the instance is not optimized for EBS I/O. The optimization
        #   provides dedicated throughput to Amazon EBS and an optimized
        #   configuration stack to provide optimal I/O performance. This
        #   optimization is not available with all instance types. Additional
        #   usage charges apply. For more information, see [Amazon EBS-Optimized
        #   Instances][1] in the *Amazon Elastic Compute Cloud User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html
        #   @return [Boolean]

        # @!attribute [rw] associate_public_ip_address
        #   Used for groups that launch instances into a virtual private cloud
        #   (VPC). Specifies whether to assign a public IP address to each
        #   instance. For more information, see [Launching Auto Scaling
        #   Instances in a VPC][1] in the *Auto Scaling User Guide*.
        #
        #   If you specify this parameter, be sure to specify at least one
        #   subnet when you create your group.
        #
        #   Default: If the instance is launched into a default subnet, the
        #   default is `true`. If the instance is launched into a nondefault
        #   subnet, the default is `false`. For more information, see [Supported
        #   Platforms][2] in the *Amazon Elastic Compute Cloud User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/asg-in-vpc.html
        #   [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
        #   @return [Boolean]

        # @!attribute [rw] placement_tenancy
        #   The tenancy of the instance. An instance with a tenancy of
        #   `dedicated` runs on single-tenant hardware and can only be launched
        #   into a VPC.
        #
        #   You must set the value of this parameter to `dedicated` if want to
        #   launch Dedicated Instances into a shared tenancy VPC (VPC with
        #   instance placement tenancy attribute set to `default`).
        #
        #   If you specify this parameter, be sure to specify at least one
        #   subnet when you create your group.
        #
        #   For more information, see [Launching Auto Scaling Instances in a
        #   VPC][1] in the *Auto Scaling User Guide*.
        #
        #   Valid values: `default` \| `dedicated`
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/asg-in-vpc.html
        #   @return [String]

      end

      # Contains the parameters for CreateOrUpdateTags.
      # @note When making an API call, pass CreateOrUpdateTagsType
      #   data as a hash:
      #
      #       {
      #         tags: [ # required
      #           {
      #             resource_id: "XmlString",
      #             resource_type: "XmlString",
      #             key: "TagKey", # required
      #             value: "TagValue",
      #             propagate_at_launch: false,
      #           },
      #         ],
      #       }
      class CreateOrUpdateTagsType < Aws::Structure.new(
        :tags)

        # @!attribute [rw] tags
        #   One or more tags.
        #   @return [Array<Types::Tag>]

      end

      # Contains the parameters for DeleteAutoScalingGroup.
      # @note When making an API call, pass DeleteAutoScalingGroupType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         force_delete: false,
      #       }
      class DeleteAutoScalingGroupType < Aws::Structure.new(
        :auto_scaling_group_name,
        :force_delete)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the group to delete.
        #   @return [String]

        # @!attribute [rw] force_delete
        #   Specifies that the group will be deleted along with all instances
        #   associated with the group, without waiting for all instances to be
        #   terminated. This parameter also deletes any lifecycle actions
        #   associated with the group.
        #   @return [Boolean]

      end

      # Contains the output of DeleteLifecycleHook.
      class DeleteLifecycleHookAnswer < Aws::EmptyStructure; end

      # Contains the parameters for DeleteLifecycleHook.
      # @note When making an API call, pass DeleteLifecycleHookType
      #   data as a hash:
      #
      #       {
      #         lifecycle_hook_name: "AsciiStringMaxLen255", # required
      #         auto_scaling_group_name: "ResourceName", # required
      #       }
      class DeleteLifecycleHookType < Aws::Structure.new(
        :lifecycle_hook_name,
        :auto_scaling_group_name)

        # @!attribute [rw] lifecycle_hook_name
        #   The name of the lifecycle hook.
        #   @return [String]

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group for the lifecycle hook.
        #   @return [String]

      end

      # Contains the parameters for DeleteNotificationConfiguration.
      # @note When making an API call, pass DeleteNotificationConfigurationType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         topic_arn: "ResourceName", # required
      #       }
      class DeleteNotificationConfigurationType < Aws::Structure.new(
        :auto_scaling_group_name,
        :topic_arn)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group.
        #   @return [String]

        # @!attribute [rw] topic_arn
        #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
        #   Service (SNS) topic.
        #   @return [String]

      end

      # Contains the parameters for DeletePolicy.
      # @note When making an API call, pass DeletePolicyType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName",
      #         policy_name: "ResourceName", # required
      #       }
      class DeletePolicyType < Aws::Structure.new(
        :auto_scaling_group_name,
        :policy_name)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group.
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name or Amazon Resource Name (ARN) of the policy.
        #   @return [String]

      end

      # Contains the parameters for DeleteScheduledAction.
      # @note When making an API call, pass DeleteScheduledActionType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         scheduled_action_name: "ResourceName", # required
      #       }
      class DeleteScheduledActionType < Aws::Structure.new(
        :auto_scaling_group_name,
        :scheduled_action_name)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group.
        #   @return [String]

        # @!attribute [rw] scheduled_action_name
        #   The name of the action to delete.
        #   @return [String]

      end

      # Contains the parameters for DeleteTags.
      # @note When making an API call, pass DeleteTagsType
      #   data as a hash:
      #
      #       {
      #         tags: [ # required
      #           {
      #             resource_id: "XmlString",
      #             resource_type: "XmlString",
      #             key: "TagKey", # required
      #             value: "TagValue",
      #             propagate_at_launch: false,
      #           },
      #         ],
      #       }
      class DeleteTagsType < Aws::Structure.new(
        :tags)

        # @!attribute [rw] tags
        #   One or more tags.
        #   @return [Array<Types::Tag>]

      end

      # Contains the parameters for DescribeAccountLimits.
      class DescribeAccountLimitsAnswer < Aws::Structure.new(
        :max_number_of_auto_scaling_groups,
        :max_number_of_launch_configurations,
        :number_of_auto_scaling_groups,
        :number_of_launch_configurations)

        # @!attribute [rw] max_number_of_auto_scaling_groups
        #   The maximum number of groups allowed for your AWS account. The
        #   default limit is 20 per region.
        #   @return [Integer]

        # @!attribute [rw] max_number_of_launch_configurations
        #   The maximum number of launch configurations allowed for your AWS
        #   account. The default limit is 100 per region.
        #   @return [Integer]

        # @!attribute [rw] number_of_auto_scaling_groups
        #   The current number of groups for your AWS account.
        #   @return [Integer]

        # @!attribute [rw] number_of_launch_configurations
        #   The current number of launch configurations for your AWS account.
        #   @return [Integer]

      end

      # Contains the parameters for DescribeAdjustmentTypes.
      class DescribeAdjustmentTypesAnswer < Aws::Structure.new(
        :adjustment_types)

        # @!attribute [rw] adjustment_types
        #   The policy adjustment types.
        #   @return [Array<Types::AdjustmentType>]

      end

      # Contains the parameters for DescribeAutoScalingInstances.
      # @note When making an API call, pass DescribeAutoScalingInstancesType
      #   data as a hash:
      #
      #       {
      #         instance_ids: ["XmlStringMaxLen19"],
      #         max_records: 1,
      #         next_token: "XmlString",
      #       }
      class DescribeAutoScalingInstancesType < Aws::Structure.new(
        :instance_ids,
        :max_records,
        :next_token)

        # @!attribute [rw] instance_ids
        #   The instances to describe; up to 50 instance IDs. If you omit this
        #   parameter, all Auto Scaling instances are described. If you specify
        #   an ID that does not exist, it is ignored with no error.
        #   @return [Array<String>]

        # @!attribute [rw] max_records
        #   The maximum number of items to return with this call.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   The token for the next set of items to return. (You received this
        #   token from a previous call.)
        #   @return [String]

      end

      # Contains the output of DescribeAutoScalingNotificationTypes.
      class DescribeAutoScalingNotificationTypesAnswer < Aws::Structure.new(
        :auto_scaling_notification_types)

        # @!attribute [rw] auto_scaling_notification_types
        #   The notification types.
        #   @return [Array<String>]

      end

      # Contains the output of DescribeLifecycleHookTypes.
      class DescribeLifecycleHookTypesAnswer < Aws::Structure.new(
        :lifecycle_hook_types)

        # @!attribute [rw] lifecycle_hook_types
        #   The lifecycle hook types.
        #   @return [Array<String>]

      end

      # Contains the output of DescribeLifecycleHooks.
      class DescribeLifecycleHooksAnswer < Aws::Structure.new(
        :lifecycle_hooks)

        # @!attribute [rw] lifecycle_hooks
        #   The lifecycle hooks for the specified group.
        #   @return [Array<Types::LifecycleHook>]

      end

      # Contains the parameters for DescribeLifecycleHooks.
      # @note When making an API call, pass DescribeLifecycleHooksType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         lifecycle_hook_names: ["AsciiStringMaxLen255"],
      #       }
      class DescribeLifecycleHooksType < Aws::Structure.new(
        :auto_scaling_group_name,
        :lifecycle_hook_names)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the group.
        #   @return [String]

        # @!attribute [rw] lifecycle_hook_names
        #   The names of one or more lifecycle hooks. If you omit this
        #   parameter, all lifecycle hooks are described.
        #   @return [Array<String>]

      end

      # Contains the parameters for DescribeLoadBalancerTargetGroups.
      # @note When making an API call, pass DescribeLoadBalancerTargetGroupsRequest
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         next_token: "XmlString",
      #         max_records: 1,
      #       }
      class DescribeLoadBalancerTargetGroupsRequest < Aws::Structure.new(
        :auto_scaling_group_name,
        :next_token,
        :max_records)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group.
        #   @return [String]

        # @!attribute [rw] next_token
        #   The token for the next set of items to return. (You received this
        #   token from a previous call.)
        #   @return [String]

        # @!attribute [rw] max_records
        #   The maximum number of items to return with this call.
        #   @return [Integer]

      end

      # Contains the output of DescribeLoadBalancerTargetGroups.
      class DescribeLoadBalancerTargetGroupsResponse < Aws::Structure.new(
        :load_balancer_target_groups,
        :next_token)

        # @!attribute [rw] load_balancer_target_groups
        #   Information about the target groups.
        #   @return [Array<Types::LoadBalancerTargetGroupState>]

        # @!attribute [rw] next_token
        #   The token to use when requesting the next set of items. If there are
        #   no additional items to return, the string is empty.
        #   @return [String]

      end

      # Contains the parameters for DescribeLoadBalancers.
      # @note When making an API call, pass DescribeLoadBalancersRequest
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         next_token: "XmlString",
      #         max_records: 1,
      #       }
      class DescribeLoadBalancersRequest < Aws::Structure.new(
        :auto_scaling_group_name,
        :next_token,
        :max_records)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the group.
        #   @return [String]

        # @!attribute [rw] next_token
        #   The token for the next set of items to return. (You received this
        #   token from a previous call.)
        #   @return [String]

        # @!attribute [rw] max_records
        #   The maximum number of items to return with this call.
        #   @return [Integer]

      end

      # Contains the output of DescribeLoadBalancers.
      class DescribeLoadBalancersResponse < Aws::Structure.new(
        :load_balancers,
        :next_token)

        # @!attribute [rw] load_balancers
        #   The load balancers.
        #   @return [Array<Types::LoadBalancerState>]

        # @!attribute [rw] next_token
        #   The token to use when requesting the next set of items. If there are
        #   no additional items to return, the string is empty.
        #   @return [String]

      end

      # Contains the output of DescribeMetricsCollectionTypes.
      class DescribeMetricCollectionTypesAnswer < Aws::Structure.new(
        :metrics,
        :granularities)

        # @!attribute [rw] metrics
        #   One or more metrics.
        #   @return [Array<Types::MetricCollectionType>]

        # @!attribute [rw] granularities
        #   The granularities for the metrics.
        #   @return [Array<Types::MetricGranularityType>]

      end

      # Contains the output from DescribeNotificationConfigurations.
      class DescribeNotificationConfigurationsAnswer < Aws::Structure.new(
        :notification_configurations,
        :next_token)

        # @!attribute [rw] notification_configurations
        #   The notification configurations.
        #   @return [Array<Types::NotificationConfiguration>]

        # @!attribute [rw] next_token
        #   The token to use when requesting the next set of items. If there are
        #   no additional items to return, the string is empty.
        #   @return [String]

      end

      # Contains the parameters for DescribeNotificationConfigurations.
      # @note When making an API call, pass DescribeNotificationConfigurationsType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_names: ["ResourceName"],
      #         next_token: "XmlString",
      #         max_records: 1,
      #       }
      class DescribeNotificationConfigurationsType < Aws::Structure.new(
        :auto_scaling_group_names,
        :next_token,
        :max_records)

        # @!attribute [rw] auto_scaling_group_names
        #   The name of the group.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   The token for the next set of items to return. (You received this
        #   token from a previous call.)
        #   @return [String]

        # @!attribute [rw] max_records
        #   The maximum number of items to return with this call.
        #   @return [Integer]

      end

      # Contains the parameters for DescribePolicies.
      # @note When making an API call, pass DescribePoliciesType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName",
      #         policy_names: ["ResourceName"],
      #         policy_types: ["XmlStringMaxLen64"],
      #         next_token: "XmlString",
      #         max_records: 1,
      #       }
      class DescribePoliciesType < Aws::Structure.new(
        :auto_scaling_group_name,
        :policy_names,
        :policy_types,
        :next_token,
        :max_records)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the group.
        #   @return [String]

        # @!attribute [rw] policy_names
        #   One or more policy names or policy ARNs to be described. If you omit
        #   this parameter, all policy names are described. If an group name is
        #   provided, the results are limited to that group. This list is
        #   limited to 50 items. If you specify an unknown policy name, it is
        #   ignored with no error.
        #   @return [Array<String>]

        # @!attribute [rw] policy_types
        #   One or more policy types. Valid values are `SimpleScaling` and
        #   `StepScaling`.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   The token for the next set of items to return. (You received this
        #   token from a previous call.)
        #   @return [String]

        # @!attribute [rw] max_records
        #   The maximum number of items to be returned with each call.
        #   @return [Integer]

      end

      # Contains the parameters for DescribeScalingActivities.
      # @note When making an API call, pass DescribeScalingActivitiesType
      #   data as a hash:
      #
      #       {
      #         activity_ids: ["XmlString"],
      #         auto_scaling_group_name: "ResourceName",
      #         max_records: 1,
      #         next_token: "XmlString",
      #       }
      class DescribeScalingActivitiesType < Aws::Structure.new(
        :activity_ids,
        :auto_scaling_group_name,
        :max_records,
        :next_token)

        # @!attribute [rw] activity_ids
        #   The activity IDs of the desired scaling activities. If you omit this
        #   parameter, all activities for the past six weeks are described. If
        #   you specify an Auto Scaling group, the results are limited to that
        #   group. The list of requested activities cannot contain more than 50
        #   items. If unknown activities are requested, they are ignored with no
        #   error.
        #   @return [Array<String>]

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the group.
        #   @return [String]

        # @!attribute [rw] max_records
        #   The maximum number of items to return with this call.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   The token for the next set of items to return. (You received this
        #   token from a previous call.)
        #   @return [String]

      end

      # Contains the parameters for DescribeScheduledActions.
      # @note When making an API call, pass DescribeScheduledActionsType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName",
      #         scheduled_action_names: ["ResourceName"],
      #         start_time: Time.now,
      #         end_time: Time.now,
      #         next_token: "XmlString",
      #         max_records: 1,
      #       }
      class DescribeScheduledActionsType < Aws::Structure.new(
        :auto_scaling_group_name,
        :scheduled_action_names,
        :start_time,
        :end_time,
        :next_token,
        :max_records)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the group.
        #   @return [String]

        # @!attribute [rw] scheduled_action_names
        #   Describes one or more scheduled actions. If you omit this parameter,
        #   all scheduled actions are described. If you specify an unknown
        #   scheduled action, it is ignored with no error.
        #
        #   You can describe up to a maximum of 50 instances with a single call.
        #   If there are more items to return, the call returns a token. To get
        #   the next set of items, repeat the call with the returned token.
        #   @return [Array<String>]

        # @!attribute [rw] start_time
        #   The earliest scheduled start time to return. If scheduled action
        #   names are provided, this parameter is ignored.
        #   @return [Time]

        # @!attribute [rw] end_time
        #   The latest scheduled start time to return. If scheduled action names
        #   are provided, this parameter is ignored.
        #   @return [Time]

        # @!attribute [rw] next_token
        #   The token for the next set of items to return. (You received this
        #   token from a previous call.)
        #   @return [String]

        # @!attribute [rw] max_records
        #   The maximum number of items to return with this call.
        #   @return [Integer]

      end

      # Contains the parameters for DescribeTags.
      # @note When making an API call, pass DescribeTagsType
      #   data as a hash:
      #
      #       {
      #         filters: [
      #           {
      #             name: "XmlString",
      #             values: ["XmlString"],
      #           },
      #         ],
      #         next_token: "XmlString",
      #         max_records: 1,
      #       }
      class DescribeTagsType < Aws::Structure.new(
        :filters,
        :next_token,
        :max_records)

        # @!attribute [rw] filters
        #   A filter used to scope the tags to return.
        #   @return [Array<Types::Filter>]

        # @!attribute [rw] next_token
        #   The token for the next set of items to return. (You received this
        #   token from a previous call.)
        #   @return [String]

        # @!attribute [rw] max_records
        #   The maximum number of items to return with this call.
        #   @return [Integer]

      end

      # Contains the output of DescribeTerminationPolicyTypes.
      class DescribeTerminationPolicyTypesAnswer < Aws::Structure.new(
        :termination_policy_types)

        # @!attribute [rw] termination_policy_types
        #   The termination policies supported by Auto Scaling
        #   (`OldestInstance`, `OldestLaunchConfiguration`, `NewestInstance`,
        #   `ClosestToNextInstanceHour`, and `Default`).
        #   @return [Array<String>]

      end

      # Contains the output of DetachInstances.
      class DetachInstancesAnswer < Aws::Structure.new(
        :activities)

        # @!attribute [rw] activities
        #   The activities related to detaching the instances from the Auto
        #   Scaling group.
        #   @return [Array<Types::Activity>]

      end

      # Contains the parameters for DetachInstances.
      # @note When making an API call, pass DetachInstancesQuery
      #   data as a hash:
      #
      #       {
      #         instance_ids: ["XmlStringMaxLen19"],
      #         auto_scaling_group_name: "ResourceName", # required
      #         should_decrement_desired_capacity: false, # required
      #       }
      class DetachInstancesQuery < Aws::Structure.new(
        :instance_ids,
        :auto_scaling_group_name,
        :should_decrement_desired_capacity)

        # @!attribute [rw] instance_ids
        #   One or more instance IDs.
        #   @return [Array<String>]

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the group.
        #   @return [String]

        # @!attribute [rw] should_decrement_desired_capacity
        #   If `True`, the Auto Scaling group decrements the desired capacity
        #   value by the number of instances detached.
        #   @return [Boolean]

      end

      class DetachLoadBalancerTargetGroupsResultType < Aws::EmptyStructure; end

      # @note When making an API call, pass DetachLoadBalancerTargetGroupsType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         target_group_arns: ["XmlStringMaxLen511"], # required
      #       }
      class DetachLoadBalancerTargetGroupsType < Aws::Structure.new(
        :auto_scaling_group_name,
        :target_group_arns)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group.
        #   @return [String]

        # @!attribute [rw] target_group_arns
        #   The Amazon Resource Names (ARN) of the target groups.
        #   @return [Array<String>]

      end

      # Contains the output for DetachLoadBalancers.
      class DetachLoadBalancersResultType < Aws::EmptyStructure; end

      # Contains the parameters for DetachLoadBalancers.
      # @note When making an API call, pass DetachLoadBalancersType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         load_balancer_names: ["XmlStringMaxLen255"], # required
      #       }
      class DetachLoadBalancersType < Aws::Structure.new(
        :auto_scaling_group_name,
        :load_balancer_names)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group.
        #   @return [String]

        # @!attribute [rw] load_balancer_names
        #   One or more load balancer names.
        #   @return [Array<String>]

      end

      # Contains the parameters for DisableMetricsCollection.
      # @note When making an API call, pass DisableMetricsCollectionQuery
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         metrics: ["XmlStringMaxLen255"],
      #       }
      class DisableMetricsCollectionQuery < Aws::Structure.new(
        :auto_scaling_group_name,
        :metrics)

        # @!attribute [rw] auto_scaling_group_name
        #   The name or Amazon Resource Name (ARN) of the group.
        #   @return [String]

        # @!attribute [rw] metrics
        #   One or more of the following metrics. If you omit this parameter,
        #   all metrics are disabled.
        #
        #   * `GroupMinSize`
        #
        #   * `GroupMaxSize`
        #
        #   * `GroupDesiredCapacity`
        #
        #   * `GroupInServiceInstances`
        #
        #   * `GroupPendingInstances`
        #
        #   * `GroupStandbyInstances`
        #
        #   * `GroupTerminatingInstances`
        #
        #   * `GroupTotalInstances`
        #   @return [Array<String>]

      end

      # Describes an Amazon EBS volume.
      # @note When making an API call, pass Ebs
      #   data as a hash:
      #
      #       {
      #         snapshot_id: "XmlStringMaxLen255",
      #         volume_size: 1,
      #         volume_type: "BlockDeviceEbsVolumeType",
      #         delete_on_termination: false,
      #         iops: 1,
      #         encrypted: false,
      #       }
      class Ebs < Aws::Structure.new(
        :snapshot_id,
        :volume_size,
        :volume_type,
        :delete_on_termination,
        :iops,
        :encrypted)

        # @!attribute [rw] snapshot_id
        #   The ID of the snapshot.
        #   @return [String]

        # @!attribute [rw] volume_size
        #   The volume size, in GiB. For `standard` volumes, specify a value
        #   from 1 to 1,024. For `io1` volumes, specify a value from 4 to
        #   16,384. For `gp2` volumes, specify a value from 1 to 16,384. If you
        #   specify a snapshot, the volume size must be equal to or larger than
        #   the snapshot size.
        #
        #   Default: If you create a volume from a snapshot and you don\'t
        #   specify a volume size, the default is the snapshot size.
        #   @return [Integer]

        # @!attribute [rw] volume_type
        #   The volume type. For more information, see [Amazon EBS Volume
        #   Types][1] in the *Amazon Elastic Compute Cloud User Guide*.
        #
        #   Valid values: `standard` \| `io1` \| `gp2`
        #
        #   Default: `standard`
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html
        #   @return [String]

        # @!attribute [rw] delete_on_termination
        #   Indicates whether the volume is deleted on instance termination.
        #
        #   Default: `true`
        #   @return [Boolean]

        # @!attribute [rw] iops
        #   The number of I/O operations per second (IOPS) to provision for the
        #   volume.
        #
        #   Constraint: Required when the volume type is `io1`.
        #   @return [Integer]

        # @!attribute [rw] encrypted
        #   Indicates whether the volume should be encrypted. Encrypted EBS
        #   volumes must be attached to instances that support Amazon EBS
        #   encryption. Volumes that are created from encrypted snapshots are
        #   automatically encrypted. There is no way to create an encrypted
        #   volume from an unencrypted snapshot or an unencrypted volume from an
        #   encrypted snapshot. For more information, see [Amazon EBS
        #   Encryption][1] in the *Amazon Elastic Compute Cloud User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
        #   @return [Boolean]

      end

      # Contains the parameters for EnableMetricsCollection.
      # @note When making an API call, pass EnableMetricsCollectionQuery
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         metrics: ["XmlStringMaxLen255"],
      #         granularity: "XmlStringMaxLen255", # required
      #       }
      class EnableMetricsCollectionQuery < Aws::Structure.new(
        :auto_scaling_group_name,
        :metrics,
        :granularity)

        # @!attribute [rw] auto_scaling_group_name
        #   The name or ARN of the Auto Scaling group.
        #   @return [String]

        # @!attribute [rw] metrics
        #   One or more of the following metrics. If you omit this parameter,
        #   all metrics are enabled.
        #
        #   * `GroupMinSize`
        #
        #   * `GroupMaxSize`
        #
        #   * `GroupDesiredCapacity`
        #
        #   * `GroupInServiceInstances`
        #
        #   * `GroupPendingInstances`
        #
        #   * `GroupStandbyInstances`
        #
        #   * `GroupTerminatingInstances`
        #
        #   * `GroupTotalInstances`
        #   @return [Array<String>]

        # @!attribute [rw] granularity
        #   The granularity to associate with the metrics to collect. The only
        #   valid value is `1Minute`.
        #   @return [String]

      end

      # Describes an enabled metric.
      class EnabledMetric < Aws::Structure.new(
        :metric,
        :granularity)

        # @!attribute [rw] metric
        #   One of the following metrics:
        #
        #   * `GroupMinSize`
        #
        #   * `GroupMaxSize`
        #
        #   * `GroupDesiredCapacity`
        #
        #   * `GroupInServiceInstances`
        #
        #   * `GroupPendingInstances`
        #
        #   * `GroupStandbyInstances`
        #
        #   * `GroupTerminatingInstances`
        #
        #   * `GroupTotalInstances`
        #   @return [String]

        # @!attribute [rw] granularity
        #   The granularity of the metric. The only valid value is `1Minute`.
        #   @return [String]

      end

      # Contains the output of EnterStandby.
      class EnterStandbyAnswer < Aws::Structure.new(
        :activities)

        # @!attribute [rw] activities
        #   The activities related to moving instances into `Standby` mode.
        #   @return [Array<Types::Activity>]

      end

      # Contains the parameters for EnteStandby.
      # @note When making an API call, pass EnterStandbyQuery
      #   data as a hash:
      #
      #       {
      #         instance_ids: ["XmlStringMaxLen19"],
      #         auto_scaling_group_name: "ResourceName", # required
      #         should_decrement_desired_capacity: false, # required
      #       }
      class EnterStandbyQuery < Aws::Structure.new(
        :instance_ids,
        :auto_scaling_group_name,
        :should_decrement_desired_capacity)

        # @!attribute [rw] instance_ids
        #   One or more instances to move into `Standby` mode. You must specify
        #   at least one instance ID.
        #   @return [Array<String>]

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group.
        #   @return [String]

        # @!attribute [rw] should_decrement_desired_capacity
        #   Specifies whether the instances moved to `Standby` mode count as
        #   part of the Auto Scaling group\'s desired capacity. If set, the
        #   desired capacity for the Auto Scaling group decrements by the number
        #   of instances moved to `Standby` mode.
        #   @return [Boolean]

      end

      # Contains the parameters for ExecutePolicy.
      # @note When making an API call, pass ExecutePolicyType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName",
      #         policy_name: "ResourceName", # required
      #         honor_cooldown: false,
      #         metric_value: 1.0,
      #         breach_threshold: 1.0,
      #       }
      class ExecutePolicyType < Aws::Structure.new(
        :auto_scaling_group_name,
        :policy_name,
        :honor_cooldown,
        :metric_value,
        :breach_threshold)

        # @!attribute [rw] auto_scaling_group_name
        #   The name or Amazon Resource Name (ARN) of the Auto Scaling group.
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name or ARN of the policy.
        #   @return [String]

        # @!attribute [rw] honor_cooldown
        #   If this parameter is true, Auto Scaling waits for the cooldown
        #   period to complete before executing the policy. Otherwise, Auto
        #   Scaling executes the policy without waiting for the cooldown period
        #   to complete.
        #
        #   This parameter is not supported if the policy type is `StepScaling`.
        #
        #   For more information, see [Auto Scaling Cooldowns][1] in the *Auto
        #   Scaling User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/Cooldown.html
        #   @return [Boolean]

        # @!attribute [rw] metric_value
        #   The metric value to compare to `BreachThreshold`. This enables you
        #   to execute a policy of type `StepScaling` and determine which step
        #   adjustment to use. For example, if the breach threshold is 50 and
        #   you want to use a step adjustment with a lower bound of 0 and an
        #   upper bound of 10, you can set the metric value to 59.
        #
        #   If you specify a metric value that doesn\'t correspond to a step
        #   adjustment for the policy, the call returns an error.
        #
        #   This parameter is required if the policy type is `StepScaling` and
        #   not supported otherwise.
        #   @return [Float]

        # @!attribute [rw] breach_threshold
        #   The breach threshold for the alarm.
        #
        #   This parameter is required if the policy type is `StepScaling` and
        #   not supported otherwise.
        #   @return [Float]

      end

      # Contains the parameters for ExitStandby.
      class ExitStandbyAnswer < Aws::Structure.new(
        :activities)

        # @!attribute [rw] activities
        #   The activities related to moving instances out of `Standby` mode.
        #   @return [Array<Types::Activity>]

      end

      # Contains the parameters for ExitStandby.
      # @note When making an API call, pass ExitStandbyQuery
      #   data as a hash:
      #
      #       {
      #         instance_ids: ["XmlStringMaxLen19"],
      #         auto_scaling_group_name: "ResourceName", # required
      #       }
      class ExitStandbyQuery < Aws::Structure.new(
        :instance_ids,
        :auto_scaling_group_name)

        # @!attribute [rw] instance_ids
        #   One or more instance IDs. You must specify at least one instance ID.
        #   @return [Array<String>]

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group.
        #   @return [String]

      end

      # Describes a filter.
      # @note When making an API call, pass Filter
      #   data as a hash:
      #
      #       {
      #         name: "XmlString",
      #         values: ["XmlString"],
      #       }
      class Filter < Aws::Structure.new(
        :name,
        :values)

        # @!attribute [rw] name
        #   The name of the filter. The valid values are:
        #   `"auto-scaling-group"`, `"key"`, `"value"`, and
        #   `"propagate-at-launch"`.
        #   @return [String]

        # @!attribute [rw] values
        #   The value of the filter.
        #   @return [Array<String>]

      end

      # Describes an EC2 instance.
      class Instance < Aws::Structure.new(
        :instance_id,
        :availability_zone,
        :lifecycle_state,
        :health_status,
        :launch_configuration_name,
        :protected_from_scale_in)

        # @!attribute [rw] instance_id
        #   The ID of the instance.
        #   @return [String]

        # @!attribute [rw] availability_zone
        #   The Availability Zone in which the instance is running.
        #   @return [String]

        # @!attribute [rw] lifecycle_state
        #   A description of the current lifecycle state. Note that the
        #   `Quarantined` state is not used.
        #   @return [String]

        # @!attribute [rw] health_status
        #   The last reported health status of the instance. \"Healthy\" means
        #   that the instance is healthy and should remain in service.
        #   \"Unhealthy\" means that the instance is unhealthy and Auto Scaling
        #   should terminate and replace it.
        #   @return [String]

        # @!attribute [rw] launch_configuration_name
        #   The launch configuration associated with the instance.
        #   @return [String]

        # @!attribute [rw] protected_from_scale_in
        #   Indicates whether the instance is protected from termination by Auto
        #   Scaling when scaling in.
        #   @return [Boolean]

      end

      # Describes whether instance monitoring is enabled.
      # @note When making an API call, pass InstanceMonitoring
      #   data as a hash:
      #
      #       {
      #         enabled: false,
      #       }
      class InstanceMonitoring < Aws::Structure.new(
        :enabled)

        # @!attribute [rw] enabled
        #   If `True`, instance monitoring is enabled.
        #   @return [Boolean]

      end

      # Describes a launch configuration.
      class LaunchConfiguration < Aws::Structure.new(
        :launch_configuration_name,
        :launch_configuration_arn,
        :image_id,
        :key_name,
        :security_groups,
        :classic_link_vpc_id,
        :classic_link_vpc_security_groups,
        :user_data,
        :instance_type,
        :kernel_id,
        :ramdisk_id,
        :block_device_mappings,
        :instance_monitoring,
        :spot_price,
        :iam_instance_profile,
        :created_time,
        :ebs_optimized,
        :associate_public_ip_address,
        :placement_tenancy)

        # @!attribute [rw] launch_configuration_name
        #   The name of the launch configuration.
        #   @return [String]

        # @!attribute [rw] launch_configuration_arn
        #   The Amazon Resource Name (ARN) of the launch configuration.
        #   @return [String]

        # @!attribute [rw] image_id
        #   The ID of the Amazon Machine Image (AMI).
        #   @return [String]

        # @!attribute [rw] key_name
        #   The name of the key pair.
        #   @return [String]

        # @!attribute [rw] security_groups
        #   The security groups to associate with the instances.
        #   @return [Array<String>]

        # @!attribute [rw] classic_link_vpc_id
        #   The ID of a ClassicLink-enabled VPC to link your EC2-Classic
        #   instances to. This parameter can only be used if you are launching
        #   EC2-Classic instances. For more information, see [ClassicLink][1] in
        #   the *Amazon Elastic Compute Cloud User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
        #   @return [String]

        # @!attribute [rw] classic_link_vpc_security_groups
        #   The IDs of one or more security groups for the VPC specified in
        #   `ClassicLinkVPCId`. This parameter is required if you specify a
        #   ClassicLink-enabled VPC, and cannot be used otherwise. For more
        #   information, see [ClassicLink][1] in the *Amazon Elastic Compute
        #   Cloud User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
        #   @return [Array<String>]

        # @!attribute [rw] user_data
        #   The user data available to the instances.
        #   @return [String]

        # @!attribute [rw] instance_type
        #   The instance type for the instances.
        #   @return [String]

        # @!attribute [rw] kernel_id
        #   The ID of the kernel associated with the AMI.
        #   @return [String]

        # @!attribute [rw] ramdisk_id
        #   The ID of the RAM disk associated with the AMI.
        #   @return [String]

        # @!attribute [rw] block_device_mappings
        #   A block device mapping, which specifies the block devices for the
        #   instance.
        #   @return [Array<Types::BlockDeviceMapping>]

        # @!attribute [rw] instance_monitoring
        #   Controls whether instances in this group are launched with detailed
        #   (`true`) or basic (`false`) monitoring.
        #   @return [Types::InstanceMonitoring]

        # @!attribute [rw] spot_price
        #   The price to bid when launching Spot Instances.
        #   @return [String]

        # @!attribute [rw] iam_instance_profile
        #   The name or Amazon Resource Name (ARN) of the instance profile
        #   associated with the IAM role for the instance.
        #   @return [String]

        # @!attribute [rw] created_time
        #   The creation date and time for the launch configuration.
        #   @return [Time]

        # @!attribute [rw] ebs_optimized
        #   Controls whether the instance is optimized for EBS I/O (`true`) or
        #   not (`false`).
        #   @return [Boolean]

        # @!attribute [rw] associate_public_ip_address
        #   \[EC2-VPC\] Indicates whether to assign a public IP address to each
        #   instance.
        #   @return [Boolean]

        # @!attribute [rw] placement_tenancy
        #   The tenancy of the instance, either `default` or `dedicated`. An
        #   instance with `dedicated` tenancy runs in an isolated, single-tenant
        #   hardware and can only be launched into a VPC.
        #   @return [String]

      end

      # Contains the parameters for DeleteLaunchConfiguration.
      # @note When making an API call, pass LaunchConfigurationNameType
      #   data as a hash:
      #
      #       {
      #         launch_configuration_name: "ResourceName", # required
      #       }
      class LaunchConfigurationNameType < Aws::Structure.new(
        :launch_configuration_name)

        # @!attribute [rw] launch_configuration_name
        #   The name of the launch configuration.
        #   @return [String]

      end

      # Contains the parameters for DescribeLaunchConfigurations.
      # @note When making an API call, pass LaunchConfigurationNamesType
      #   data as a hash:
      #
      #       {
      #         launch_configuration_names: ["ResourceName"],
      #         next_token: "XmlString",
      #         max_records: 1,
      #       }
      class LaunchConfigurationNamesType < Aws::Structure.new(
        :launch_configuration_names,
        :next_token,
        :max_records)

        # @!attribute [rw] launch_configuration_names
        #   The launch configuration names. If you omit this parameter, all
        #   launch configurations are described.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   The token for the next set of items to return. (You received this
        #   token from a previous call.)
        #   @return [String]

        # @!attribute [rw] max_records
        #   The maximum number of items to return with this call. The default is
        #   100.
        #   @return [Integer]

      end

      # Contains the output of DescribeLaunchConfigurations.
      class LaunchConfigurationsType < Aws::Structure.new(
        :launch_configurations,
        :next_token)

        # @!attribute [rw] launch_configurations
        #   The launch configurations.
        #   @return [Array<Types::LaunchConfiguration>]

        # @!attribute [rw] next_token
        #   The token to use when requesting the next set of items. If there are
        #   no additional items to return, the string is empty.
        #   @return [String]

      end

      # Describes a lifecycle hook, which tells Auto Scaling that you want to
      # perform an action when an instance launches or terminates. When you
      # have a lifecycle hook in place, the Auto Scaling group will either:
      #
      # * Pause the instance after it launches, but before it is put into
      #   service
      #
      # * Pause the instance as it terminates, but before it is fully
      #   terminated
      #
      # For more information, see [Auto Scaling Lifecycle][1] in the *Auto
      # Scaling User Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/AutoScalingGroupLifecycle.html
      class LifecycleHook < Aws::Structure.new(
        :lifecycle_hook_name,
        :auto_scaling_group_name,
        :lifecycle_transition,
        :notification_target_arn,
        :role_arn,
        :notification_metadata,
        :heartbeat_timeout,
        :global_timeout,
        :default_result)

        # @!attribute [rw] lifecycle_hook_name
        #   The name of the lifecycle hook.
        #   @return [String]

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group for the lifecycle hook.
        #   @return [String]

        # @!attribute [rw] lifecycle_transition
        #   The state of the EC2 instance to which you want to attach the
        #   lifecycle hook. For a list of lifecycle hook types, see
        #   DescribeLifecycleHookTypes.
        #   @return [String]

        # @!attribute [rw] notification_target_arn
        #   The ARN of the notification target that Auto Scaling uses to notify
        #   you when an instance is in the transition state for the lifecycle
        #   hook. This ARN target can be either an SQS queue or an SNS topic.
        #   The notification message sent to the target includes the following:
        #
        #   * Lifecycle action token
        #
        #   * User account ID
        #
        #   * Name of the Auto Scaling group
        #
        #   * Lifecycle hook name
        #
        #   * EC2 instance ID
        #
        #   * Lifecycle transition
        #
        #   * Notification metadata
        #   @return [String]

        # @!attribute [rw] role_arn
        #   The ARN of the IAM role that allows the Auto Scaling group to
        #   publish to the specified notification target.
        #   @return [String]

        # @!attribute [rw] notification_metadata
        #   Additional information that you want to include any time Auto
        #   Scaling sends a message to the notification target.
        #   @return [String]

        # @!attribute [rw] heartbeat_timeout
        #   The maximum time, in seconds, that can elapse before the lifecycle
        #   hook times out. The default is 3600 seconds (1 hour). When the
        #   lifecycle hook times out, Auto Scaling performs the default action.
        #   You can prevent the lifecycle hook from timing out by calling
        #   RecordLifecycleActionHeartbeat.
        #   @return [Integer]

        # @!attribute [rw] global_timeout
        #   The maximum time, in seconds, that an instance can remain in a
        #   `Pending:Wait` or `Terminating:Wait` state. The default is 172800
        #   seconds (48 hours).
        #   @return [Integer]

        # @!attribute [rw] default_result
        #   Defines the action the Auto Scaling group should take when the
        #   lifecycle hook timeout elapses or if an unexpected failure occurs.
        #   The valid values are `CONTINUE` and `ABANDON`. The default value is
        #   `CONTINUE`.
        #   @return [String]

      end

      # Describes the state of a Classic load balancer.
      #
      # If you specify a load balancer when creating the Auto Scaling group,
      # the state of the load balancer is `InService`.
      #
      # If you attach a load balancer to an existing Auto Scaling group, the
      # initial state is `Adding`. The state transitions to `Added` after all
      # instances in the group are registered with the load balancer. If ELB
      # health checks are enabled for the load balancer, the state transitions
      # to `InService` after at least one instance in the group passes the
      # health check. If EC2 health checks are enabled instead, the load
      # balancer remains in the `Added` state.
      class LoadBalancerState < Aws::Structure.new(
        :load_balancer_name,
        :state)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] state
        #   One of the following load balancer states:
        #
        #   * `Adding` - The instances in the group are being registered with
        #     the load balancer.
        #
        #   * `Added` - All instances in the group are registered with the load
        #     balancer.
        #
        #   * `InService` - At least one instance in the group passed an ELB
        #     health check.
        #
        #   * `Removing` - The instances in the group are being deregistered
        #     from the load balancer. If connection draining is enabled, Elastic
        #     Load Balancing waits for in-flight requests to complete before
        #     deregistering the instances.
        #
        #   * `Removed` - All instances in the group are deregistered from the
        #     load balancer.
        #   @return [String]

      end

      # Describes the state of a target group.
      #
      # If you attach a target group to an existing Auto Scaling group, the
      # initial state is `Adding`. The state transitions to `Added` after all
      # Auto Scaling instances are registered with the target group. If ELB
      # health checks are enabled, the state transitions to `InService` after
      # at least one Auto Scaling instance passes the health check. If EC2
      # health checks are enabled instead, the target group remains in the
      # `Added` state.
      class LoadBalancerTargetGroupState < Aws::Structure.new(
        :load_balancer_target_group_arn,
        :state)

        # @!attribute [rw] load_balancer_target_group_arn
        #   The Amazon Resource Name (ARN) of the target group.
        #   @return [String]

        # @!attribute [rw] state
        #   The state of the target group.
        #
        #   * `Adding` - The Auto Scaling instances are being registered with
        #     the target group.
        #
        #   * `Added` - All Auto Scaling instances are registered with the
        #     target group.
        #
        #   * `InService` - At least one Auto Scaling instance passed an ELB
        #     health check.
        #
        #   * `Removing` - The Auto Scaling instances are being deregistered
        #     from the target group. If connection draining is enabled, Elastic
        #     Load Balancing waits for in-flight requests to complete before
        #     deregistering the instances.
        #
        #   * `Removed` - All Auto Scaling instances are deregistered from the
        #     target group.
        #   @return [String]

      end

      # Describes a metric.
      class MetricCollectionType < Aws::Structure.new(
        :metric)

        # @!attribute [rw] metric
        #   One of the following metrics:
        #
        #   * `GroupMinSize`
        #
        #   * `GroupMaxSize`
        #
        #   * `GroupDesiredCapacity`
        #
        #   * `GroupInServiceInstances`
        #
        #   * `GroupPendingInstances`
        #
        #   * `GroupStandbyInstances`
        #
        #   * `GroupTerminatingInstances`
        #
        #   * `GroupTotalInstances`
        #   @return [String]

      end

      # Describes a granularity of a metric.
      class MetricGranularityType < Aws::Structure.new(
        :granularity)

        # @!attribute [rw] granularity
        #   The granularity. The only valid value is `1Minute`.
        #   @return [String]

      end

      # Describes a notification.
      class NotificationConfiguration < Aws::Structure.new(
        :auto_scaling_group_name,
        :topic_arn,
        :notification_type)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the group.
        #   @return [String]

        # @!attribute [rw] topic_arn
        #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
        #   Service (SNS) topic.
        #   @return [String]

        # @!attribute [rw] notification_type
        #   One of the following event notification types:
        #
        #   * `autoscaling:EC2_INSTANCE_LAUNCH`
        #
        #   * `autoscaling:EC2_INSTANCE_LAUNCH_ERROR`
        #
        #   * `autoscaling:EC2_INSTANCE_TERMINATE`
        #
        #   * `autoscaling:EC2_INSTANCE_TERMINATE_ERROR`
        #
        #   * `autoscaling:TEST_NOTIFICATION`
        #   @return [String]

      end

      # Contains the output of DescribePolicies.
      class PoliciesType < Aws::Structure.new(
        :scaling_policies,
        :next_token)

        # @!attribute [rw] scaling_policies
        #   The scaling policies.
        #   @return [Array<Types::ScalingPolicy>]

        # @!attribute [rw] next_token
        #   The token to use when requesting the next set of items. If there are
        #   no additional items to return, the string is empty.
        #   @return [String]

      end

      # Contains the output of PutScalingPolicy.
      class PolicyARNType < Aws::Structure.new(
        :policy_arn)

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN) of the policy.
        #   @return [String]

      end

      # Describes a process type.
      #
      # For more information, see [Auto Scaling Processes][1] in the *Auto
      # Scaling User Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/US_SuspendResume.html#process-types
      class ProcessType < Aws::Structure.new(
        :process_name)

        # @!attribute [rw] process_name
        #   One of the following processes:
        #
        #   * `Launch`
        #
        #   * `Terminate`
        #
        #   * `AddToLoadBalancer`
        #
        #   * `AlarmNotification`
        #
        #   * `AZRebalance`
        #
        #   * `HealthCheck`
        #
        #   * `ReplaceUnhealthy`
        #
        #   * `ScheduledActions`
        #   @return [String]

      end

      # Contains the output of DescribeScalingProcessTypes.
      class ProcessesType < Aws::Structure.new(
        :processes)

        # @!attribute [rw] processes
        #   The names of the process types.
        #   @return [Array<Types::ProcessType>]

      end

      # Contains the output of PutLifecycleHook.
      class PutLifecycleHookAnswer < Aws::EmptyStructure; end

      # Contains the parameters for PutLifecycleHook.
      # @note When making an API call, pass PutLifecycleHookType
      #   data as a hash:
      #
      #       {
      #         lifecycle_hook_name: "AsciiStringMaxLen255", # required
      #         auto_scaling_group_name: "ResourceName", # required
      #         lifecycle_transition: "LifecycleTransition",
      #         role_arn: "ResourceName",
      #         notification_target_arn: "NotificationTargetResourceName",
      #         notification_metadata: "XmlStringMaxLen1023",
      #         heartbeat_timeout: 1,
      #         default_result: "LifecycleActionResult",
      #       }
      class PutLifecycleHookType < Aws::Structure.new(
        :lifecycle_hook_name,
        :auto_scaling_group_name,
        :lifecycle_transition,
        :role_arn,
        :notification_target_arn,
        :notification_metadata,
        :heartbeat_timeout,
        :default_result)

        # @!attribute [rw] lifecycle_hook_name
        #   The name of the lifecycle hook.
        #   @return [String]

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group to which you want to assign the
        #   lifecycle hook.
        #   @return [String]

        # @!attribute [rw] lifecycle_transition
        #   The instance state to which you want to attach the lifecycle hook.
        #   For a list of lifecycle hook types, see DescribeLifecycleHookTypes.
        #
        #   This parameter is required for new lifecycle hooks, but optional
        #   when updating existing hooks.
        #   @return [String]

        # @!attribute [rw] role_arn
        #   The ARN of the IAM role that allows the Auto Scaling group to
        #   publish to the specified notification target.
        #
        #   This parameter is required for new lifecycle hooks, but optional
        #   when updating existing hooks.
        #   @return [String]

        # @!attribute [rw] notification_target_arn
        #   The ARN of the notification target that Auto Scaling will use to
        #   notify you when an instance is in the transition state for the
        #   lifecycle hook. This target can be either an SQS queue or an SNS
        #   topic. If you specify an empty string, this overrides the current
        #   ARN.
        #
        #   The notification messages sent to the target include the following
        #   information:
        #
        #   * **AutoScalingGroupName**. The name of the Auto Scaling group.
        #
        #   * **AccountId**. The AWS account ID.
        #
        #   * **LifecycleTransition**. The lifecycle hook type.
        #
        #   * **LifecycleActionToken**. The lifecycle action token.
        #
        #   * **EC2InstanceId**. The EC2 instance ID.
        #
        #   * **LifecycleHookName**. The name of the lifecycle hook.
        #
        #   * **NotificationMetadata**. User-defined information.
        #
        #   This operation uses the JSON format when sending notifications to an
        #   Amazon SQS queue, and an email key/value pair format when sending
        #   notifications to an Amazon SNS topic.
        #
        #   When you specify a notification target, Auto Scaling sends it a test
        #   message. Test messages contains the following additional key/value
        #   pair: `"Event": "autoscaling:TEST_NOTIFICATION"`.
        #   @return [String]

        # @!attribute [rw] notification_metadata
        #   Contains additional information that you want to include any time
        #   Auto Scaling sends a message to the notification target.
        #   @return [String]

        # @!attribute [rw] heartbeat_timeout
        #   The amount of time, in seconds, that can elapse before the lifecycle
        #   hook times out. When the lifecycle hook times out, Auto Scaling
        #   performs the default action. You can prevent the lifecycle hook from
        #   timing out by calling RecordLifecycleActionHeartbeat. The default is
        #   3600 seconds (1 hour).
        #   @return [Integer]

        # @!attribute [rw] default_result
        #   Defines the action the Auto Scaling group should take when the
        #   lifecycle hook timeout elapses or if an unexpected failure occurs.
        #   This parameter can be either `CONTINUE` or `ABANDON`. The default
        #   value is `ABANDON`.
        #   @return [String]

      end

      # Contains the parameters for PutNotificationConfiguration.
      # @note When making an API call, pass PutNotificationConfigurationType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         topic_arn: "ResourceName", # required
      #         notification_types: ["XmlStringMaxLen255"], # required
      #       }
      class PutNotificationConfigurationType < Aws::Structure.new(
        :auto_scaling_group_name,
        :topic_arn,
        :notification_types)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group.
        #   @return [String]

        # @!attribute [rw] topic_arn
        #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
        #   Service (SNS) topic.
        #   @return [String]

        # @!attribute [rw] notification_types
        #   The type of event that will cause the notification to be sent. For
        #   details about notification types supported by Auto Scaling, see
        #   DescribeAutoScalingNotificationTypes.
        #   @return [Array<String>]

      end

      # Contains the parameters for PutScalingPolicy.
      # @note When making an API call, pass PutScalingPolicyType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         policy_name: "XmlStringMaxLen255", # required
      #         policy_type: "XmlStringMaxLen64",
      #         adjustment_type: "XmlStringMaxLen255", # required
      #         min_adjustment_step: 1,
      #         min_adjustment_magnitude: 1,
      #         scaling_adjustment: 1,
      #         cooldown: 1,
      #         metric_aggregation_type: "XmlStringMaxLen32",
      #         step_adjustments: [
      #           {
      #             metric_interval_lower_bound: 1.0,
      #             metric_interval_upper_bound: 1.0,
      #             scaling_adjustment: 1, # required
      #           },
      #         ],
      #         estimated_instance_warmup: 1,
      #       }
      class PutScalingPolicyType < Aws::Structure.new(
        :auto_scaling_group_name,
        :policy_name,
        :policy_type,
        :adjustment_type,
        :min_adjustment_step,
        :min_adjustment_magnitude,
        :scaling_adjustment,
        :cooldown,
        :metric_aggregation_type,
        :step_adjustments,
        :estimated_instance_warmup)

        # @!attribute [rw] auto_scaling_group_name
        #   The name or ARN of the group.
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the policy.
        #   @return [String]

        # @!attribute [rw] policy_type
        #   The policy type. Valid values are `SimpleScaling` and `StepScaling`.
        #   If the policy type is null, the value is treated as `SimpleScaling`.
        #   @return [String]

        # @!attribute [rw] adjustment_type
        #   The adjustment type. Valid values are `ChangeInCapacity`,
        #   `ExactCapacity`, and `PercentChangeInCapacity`.
        #
        #   For more information, see [Dynamic Scaling][1] in the *Auto Scaling
        #   User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/as-scale-based-on-demand.html
        #   @return [String]

        # @!attribute [rw] min_adjustment_step
        #   Available for backward compatibility. Use `MinAdjustmentMagnitude`
        #   instead.
        #   @return [Integer]

        # @!attribute [rw] min_adjustment_magnitude
        #   The minimum number of instances to scale. If the value of
        #   `AdjustmentType` is `PercentChangeInCapacity`, the scaling policy
        #   changes the `DesiredCapacity` of the Auto Scaling group by at least
        #   this many instances. Otherwise, the error is `ValidationError`.
        #   @return [Integer]

        # @!attribute [rw] scaling_adjustment
        #   The amount by which to scale, based on the specified adjustment
        #   type. A positive value adds to the current capacity while a negative
        #   number removes from the current capacity.
        #
        #   This parameter is required if the policy type is `SimpleScaling` and
        #   not supported otherwise.
        #   @return [Integer]

        # @!attribute [rw] cooldown
        #   The amount of time, in seconds, after a scaling activity completes
        #   and before the next scaling activity can start. If this parameter is
        #   not specified, the default cooldown period for the group applies.
        #
        #   This parameter is not supported unless the policy type is
        #   `SimpleScaling`.
        #
        #   For more information, see [Auto Scaling Cooldowns][1] in the *Auto
        #   Scaling User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/Cooldown.html
        #   @return [Integer]

        # @!attribute [rw] metric_aggregation_type
        #   The aggregation type for the CloudWatch metrics. Valid values are
        #   `Minimum`, `Maximum`, and `Average`. If the aggregation type is
        #   null, the value is treated as `Average`.
        #
        #   This parameter is not supported if the policy type is
        #   `SimpleScaling`.
        #   @return [String]

        # @!attribute [rw] step_adjustments
        #   A set of adjustments that enable you to scale based on the size of
        #   the alarm breach.
        #
        #   This parameter is required if the policy type is `StepScaling` and
        #   not supported otherwise.
        #   @return [Array<Types::StepAdjustment>]

        # @!attribute [rw] estimated_instance_warmup
        #   The estimated time, in seconds, until a newly launched instance can
        #   contribute to the CloudWatch metrics. The default is to use the
        #   value specified for the default cooldown period for the group.
        #
        #   This parameter is not supported if the policy type is
        #   `SimpleScaling`.
        #   @return [Integer]

      end

      # Contains the parameters for PutScheduledUpdateGroupAction.
      # @note When making an API call, pass PutScheduledUpdateGroupActionType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         scheduled_action_name: "XmlStringMaxLen255", # required
      #         time: Time.now,
      #         start_time: Time.now,
      #         end_time: Time.now,
      #         recurrence: "XmlStringMaxLen255",
      #         min_size: 1,
      #         max_size: 1,
      #         desired_capacity: 1,
      #       }
      class PutScheduledUpdateGroupActionType < Aws::Structure.new(
        :auto_scaling_group_name,
        :scheduled_action_name,
        :time,
        :start_time,
        :end_time,
        :recurrence,
        :min_size,
        :max_size,
        :desired_capacity)

        # @!attribute [rw] auto_scaling_group_name
        #   The name or Amazon Resource Name (ARN) of the Auto Scaling group.
        #   @return [String]

        # @!attribute [rw] scheduled_action_name
        #   The name of this scaling action.
        #   @return [String]

        # @!attribute [rw] time
        #   This parameter is deprecated.
        #   @return [Time]

        # @!attribute [rw] start_time
        #   The time for this action to start, in \"YYYY-MM-DDThh:mm:ssZ\"
        #   format in UTC/GMT only (for example, `2014-06-01T00:00:00Z`).
        #
        #   If you try to schedule your action in the past, Auto Scaling returns
        #   an error message.
        #
        #   When `StartTime` and `EndTime` are specified with `Recurrence`, they
        #   form the boundaries of when the recurring action starts and stops.
        #   @return [Time]

        # @!attribute [rw] end_time
        #   The time for this action to end.
        #   @return [Time]

        # @!attribute [rw] recurrence
        #   The time when recurring future actions will start. Start time is
        #   specified by the user following the Unix cron syntax format. For
        #   more information, see [Cron][1] in Wikipedia.
        #
        #   When `StartTime` and `EndTime` are specified with `Recurrence`, they
        #   form the boundaries of when the recurring action will start and
        #   stop.
        #
        #
        #
        #   [1]: http://en.wikipedia.org/wiki/Cron
        #   @return [String]

        # @!attribute [rw] min_size
        #   The minimum size for the Auto Scaling group.
        #   @return [Integer]

        # @!attribute [rw] max_size
        #   The maximum size for the Auto Scaling group.
        #   @return [Integer]

        # @!attribute [rw] desired_capacity
        #   The number of EC2 instances that should be running in the group.
        #   @return [Integer]

      end

      # Contains the output of RecordLifecycleActionHeartBeat.
      class RecordLifecycleActionHeartbeatAnswer < Aws::EmptyStructure; end

      # Contains the parameters for RecordLifecycleActionHeartbeat.
      # @note When making an API call, pass RecordLifecycleActionHeartbeatType
      #   data as a hash:
      #
      #       {
      #         lifecycle_hook_name: "AsciiStringMaxLen255", # required
      #         auto_scaling_group_name: "ResourceName", # required
      #         lifecycle_action_token: "LifecycleActionToken",
      #         instance_id: "XmlStringMaxLen19",
      #       }
      class RecordLifecycleActionHeartbeatType < Aws::Structure.new(
        :lifecycle_hook_name,
        :auto_scaling_group_name,
        :lifecycle_action_token,
        :instance_id)

        # @!attribute [rw] lifecycle_hook_name
        #   The name of the lifecycle hook.
        #   @return [String]

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group for the hook.
        #   @return [String]

        # @!attribute [rw] lifecycle_action_token
        #   A token that uniquely identifies a specific lifecycle action
        #   associated with an instance. Auto Scaling sends this token to the
        #   notification target you specified when you created the lifecycle
        #   hook.
        #   @return [String]

        # @!attribute [rw] instance_id
        #   The ID of the instance.
        #   @return [String]

      end

      # Describes a scaling policy.
      class ScalingPolicy < Aws::Structure.new(
        :auto_scaling_group_name,
        :policy_name,
        :policy_arn,
        :policy_type,
        :adjustment_type,
        :min_adjustment_step,
        :min_adjustment_magnitude,
        :scaling_adjustment,
        :cooldown,
        :step_adjustments,
        :metric_aggregation_type,
        :estimated_instance_warmup,
        :alarms)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group associated with this scaling
        #   policy.
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the scaling policy.
        #   @return [String]

        # @!attribute [rw] policy_arn
        #   The Amazon Resource Name (ARN) of the policy.
        #   @return [String]

        # @!attribute [rw] policy_type
        #   The policy type. Valid values are `SimpleScaling` and `StepScaling`.
        #   @return [String]

        # @!attribute [rw] adjustment_type
        #   The adjustment type, which specifies how `ScalingAdjustment` is
        #   interpreted. Valid values are `ChangeInCapacity`, `ExactCapacity`,
        #   and `PercentChangeInCapacity`.
        #   @return [String]

        # @!attribute [rw] min_adjustment_step
        #   Available for backward compatibility. Use `MinAdjustmentMagnitude`
        #   instead.
        #   @return [Integer]

        # @!attribute [rw] min_adjustment_magnitude
        #   The minimum number of instances to scale. If the value of
        #   `AdjustmentType` is `PercentChangeInCapacity`, the scaling policy
        #   changes the `DesiredCapacity` of the Auto Scaling group by at least
        #   this many instances. Otherwise, the error is `ValidationError`.
        #   @return [Integer]

        # @!attribute [rw] scaling_adjustment
        #   The amount by which to scale, based on the specified adjustment
        #   type. A positive value adds to the current capacity while a negative
        #   number removes from the current capacity.
        #   @return [Integer]

        # @!attribute [rw] cooldown
        #   The amount of time, in seconds, after a scaling activity completes
        #   before any further trigger-related scaling activities can start.
        #   @return [Integer]

        # @!attribute [rw] step_adjustments
        #   A set of adjustments that enable you to scale based on the size of
        #   the alarm breach.
        #   @return [Array<Types::StepAdjustment>]

        # @!attribute [rw] metric_aggregation_type
        #   The aggregation type for the CloudWatch metrics. Valid values are
        #   `Minimum`, `Maximum`, and `Average`.
        #   @return [String]

        # @!attribute [rw] estimated_instance_warmup
        #   The estimated time, in seconds, until a newly launched instance can
        #   contribute to the CloudWatch metrics.
        #   @return [Integer]

        # @!attribute [rw] alarms
        #   The CloudWatch alarms related to the policy.
        #   @return [Array<Types::Alarm>]

      end

      # Contains the parameters for SuspendProcesses and ResumeProcesses.
      # @note When making an API call, pass ScalingProcessQuery
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         scaling_processes: ["XmlStringMaxLen255"],
      #       }
      class ScalingProcessQuery < Aws::Structure.new(
        :auto_scaling_group_name,
        :scaling_processes)

        # @!attribute [rw] auto_scaling_group_name
        #   The name or Amazon Resource Name (ARN) of the Auto Scaling group.
        #   @return [String]

        # @!attribute [rw] scaling_processes
        #   One or more of the following processes. If you omit this parameter,
        #   all processes are specified.
        #
        #   * `Launch`
        #
        #   * `Terminate`
        #
        #   * `HealthCheck`
        #
        #   * `ReplaceUnhealthy`
        #
        #   * `AZRebalance`
        #
        #   * `AlarmNotification`
        #
        #   * `ScheduledActions`
        #
        #   * `AddToLoadBalancer`
        #   @return [Array<String>]

      end

      # Contains the output of DescribeScheduledActions.
      class ScheduledActionsType < Aws::Structure.new(
        :scheduled_update_group_actions,
        :next_token)

        # @!attribute [rw] scheduled_update_group_actions
        #   The scheduled actions.
        #   @return [Array<Types::ScheduledUpdateGroupAction>]

        # @!attribute [rw] next_token
        #   The token to use when requesting the next set of items. If there are
        #   no additional items to return, the string is empty.
        #   @return [String]

      end

      # Describes a scheduled update to an Auto Scaling group.
      class ScheduledUpdateGroupAction < Aws::Structure.new(
        :auto_scaling_group_name,
        :scheduled_action_name,
        :scheduled_action_arn,
        :time,
        :start_time,
        :end_time,
        :recurrence,
        :min_size,
        :max_size,
        :desired_capacity)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the group.
        #   @return [String]

        # @!attribute [rw] scheduled_action_name
        #   The name of the scheduled action.
        #   @return [String]

        # @!attribute [rw] scheduled_action_arn
        #   The Amazon Resource Name (ARN) of the scheduled action.
        #   @return [String]

        # @!attribute [rw] time
        #   This parameter is deprecated.
        #   @return [Time]

        # @!attribute [rw] start_time
        #   The date and time that the action is scheduled to begin. This date
        #   and time can be up to one month in the future.
        #
        #   When `StartTime` and `EndTime` are specified with `Recurrence`, they
        #   form the boundaries of when the recurring action will start and
        #   stop.
        #   @return [Time]

        # @!attribute [rw] end_time
        #   The date and time that the action is scheduled to end. This date and
        #   time can be up to one month in the future.
        #   @return [Time]

        # @!attribute [rw] recurrence
        #   The recurring schedule for the action.
        #   @return [String]

        # @!attribute [rw] min_size
        #   The minimum size of the group.
        #   @return [Integer]

        # @!attribute [rw] max_size
        #   The maximum size of the group.
        #   @return [Integer]

        # @!attribute [rw] desired_capacity
        #   The number of instances you prefer to maintain in the group.
        #   @return [Integer]

      end

      # Contains the parameters for SetDesiredCapacity.
      # @note When making an API call, pass SetDesiredCapacityType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         desired_capacity: 1, # required
      #         honor_cooldown: false,
      #       }
      class SetDesiredCapacityType < Aws::Structure.new(
        :auto_scaling_group_name,
        :desired_capacity,
        :honor_cooldown)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group.
        #   @return [String]

        # @!attribute [rw] desired_capacity
        #   The number of EC2 instances that should be running in the Auto
        #   Scaling group.
        #   @return [Integer]

        # @!attribute [rw] honor_cooldown
        #   By default, `SetDesiredCapacity` overrides any cooldown period
        #   associated with the Auto Scaling group. Specify `True` to make Auto
        #   Scaling to wait for the cool-down period associated with the Auto
        #   Scaling group to complete before initiating a scaling activity to
        #   set your Auto Scaling group to its new capacity.
        #   @return [Boolean]

      end

      # Contains the parameters for SetInstanceHealth.
      # @note When making an API call, pass SetInstanceHealthQuery
      #   data as a hash:
      #
      #       {
      #         instance_id: "XmlStringMaxLen19", # required
      #         health_status: "XmlStringMaxLen32", # required
      #         should_respect_grace_period: false,
      #       }
      class SetInstanceHealthQuery < Aws::Structure.new(
        :instance_id,
        :health_status,
        :should_respect_grace_period)

        # @!attribute [rw] instance_id
        #   The ID of the instance.
        #   @return [String]

        # @!attribute [rw] health_status
        #   The health status of the instance. Set to `Healthy` if you want the
        #   instance to remain in service. Set to `Unhealthy` if you want the
        #   instance to be out of service. Auto Scaling will terminate and
        #   replace the unhealthy instance.
        #   @return [String]

        # @!attribute [rw] should_respect_grace_period
        #   If the Auto Scaling group of the specified instance has a
        #   `HealthCheckGracePeriod` specified for the group, by default, this
        #   call will respect the grace period. Set this to `False`, if you do
        #   not want the call to respect the grace period associated with the
        #   group.
        #
        #   For more information, see the description of the health check grace
        #   period for CreateAutoScalingGroup.
        #   @return [Boolean]

      end

      # Contains the output of SetInstanceProtection.
      class SetInstanceProtectionAnswer < Aws::EmptyStructure; end

      # Contains the parameters for SetInstanceProtection.
      # @note When making an API call, pass SetInstanceProtectionQuery
      #   data as a hash:
      #
      #       {
      #         instance_ids: ["XmlStringMaxLen19"], # required
      #         auto_scaling_group_name: "ResourceName", # required
      #         protected_from_scale_in: false, # required
      #       }
      class SetInstanceProtectionQuery < Aws::Structure.new(
        :instance_ids,
        :auto_scaling_group_name,
        :protected_from_scale_in)

        # @!attribute [rw] instance_ids
        #   One or more instance IDs.
        #   @return [Array<String>]

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the group.
        #   @return [String]

        # @!attribute [rw] protected_from_scale_in
        #   Indicates whether the instance is protected from termination by Auto
        #   Scaling when scaling in.
        #   @return [Boolean]

      end

      # Describes an adjustment based on the difference between the value of
      # the aggregated CloudWatch metric and the breach threshold that you\'ve
      # defined for the alarm.
      #
      # For the following examples, suppose that you have an alarm with a
      # breach threshold of 50:
      #
      # * If you want the adjustment to be triggered when the metric is
      #   greater than or equal to 50 and less than 60, specify a lower bound
      #   of 0 and an upper bound of 10.
      #
      # * If you want the adjustment to be triggered when the metric is
      #   greater than 40 and less than or equal to 50, specify a lower bound
      #   of -10 and an upper bound of 0.
      #
      # There are a few rules for the step adjustments for your step policy:
      #
      # * The ranges of your step adjustments can\'t overlap or have a gap.
      #
      # * At most one step adjustment can have a null lower bound. If one step
      #   adjustment has a negative lower bound, then there must be a step
      #   adjustment with a null lower bound.
      #
      # * At most one step adjustment can have a null upper bound. If one step
      #   adjustment has a positive upper bound, then there must be a step
      #   adjustment with a null upper bound.
      #
      # * The upper and lower bound can\'t be null in the same step
      #   adjustment.
      # @note When making an API call, pass StepAdjustment
      #   data as a hash:
      #
      #       {
      #         metric_interval_lower_bound: 1.0,
      #         metric_interval_upper_bound: 1.0,
      #         scaling_adjustment: 1, # required
      #       }
      class StepAdjustment < Aws::Structure.new(
        :metric_interval_lower_bound,
        :metric_interval_upper_bound,
        :scaling_adjustment)

        # @!attribute [rw] metric_interval_lower_bound
        #   The lower bound for the difference between the alarm threshold and
        #   the CloudWatch metric. If the metric value is above the breach
        #   threshold, the lower bound is inclusive (the metric must be greater
        #   than or equal to the threshold plus the lower bound). Otherwise, it
        #   is exclusive (the metric must be greater than the threshold plus the
        #   lower bound). A null value indicates negative infinity.
        #   @return [Float]

        # @!attribute [rw] metric_interval_upper_bound
        #   The upper bound for the difference between the alarm threshold and
        #   the CloudWatch metric. If the metric value is above the breach
        #   threshold, the upper bound is exclusive (the metric must be less
        #   than the threshold plus the upper bound). Otherwise, it is inclusive
        #   (the metric must be less than or equal to the threshold plus the
        #   upper bound). A null value indicates positive infinity.
        #
        #   The upper bound must be greater than the lower bound.
        #   @return [Float]

        # @!attribute [rw] scaling_adjustment
        #   The amount by which to scale, based on the specified adjustment
        #   type. A positive value adds to the current capacity while a negative
        #   number removes from the current capacity.
        #   @return [Integer]

      end

      # Describes an Auto Scaling process that has been suspended. For more
      # information, see ProcessType.
      class SuspendedProcess < Aws::Structure.new(
        :process_name,
        :suspension_reason)

        # @!attribute [rw] process_name
        #   The name of the suspended process.
        #   @return [String]

        # @!attribute [rw] suspension_reason
        #   The reason that the process was suspended.
        #   @return [String]

      end

      # Describes a tag for an Auto Scaling group.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         resource_id: "XmlString",
      #         resource_type: "XmlString",
      #         key: "TagKey", # required
      #         value: "TagValue",
      #         propagate_at_launch: false,
      #       }
      class Tag < Aws::Structure.new(
        :resource_id,
        :resource_type,
        :key,
        :value,
        :propagate_at_launch)

        # @!attribute [rw] resource_id
        #   The name of the group.
        #   @return [String]

        # @!attribute [rw] resource_type
        #   The type of resource. The only supported value is
        #   `auto-scaling-group`.
        #   @return [String]

        # @!attribute [rw] key
        #   The tag key.
        #   @return [String]

        # @!attribute [rw] value
        #   The tag value.
        #   @return [String]

        # @!attribute [rw] propagate_at_launch
        #   Determines whether the tag is added to new instances as they are
        #   launched in the group.
        #   @return [Boolean]

      end

      # Describes a tag for an Auto Scaling group.
      class TagDescription < Aws::Structure.new(
        :resource_id,
        :resource_type,
        :key,
        :value,
        :propagate_at_launch)

        # @!attribute [rw] resource_id
        #   The name of the group.
        #   @return [String]

        # @!attribute [rw] resource_type
        #   The type of resource. The only supported value is
        #   `auto-scaling-group`.
        #   @return [String]

        # @!attribute [rw] key
        #   The tag key.
        #   @return [String]

        # @!attribute [rw] value
        #   The tag value.
        #   @return [String]

        # @!attribute [rw] propagate_at_launch
        #   Determines whether the tag is added to new instances as they are
        #   launched in the group.
        #   @return [Boolean]

      end

      # Contains the output of DescribeTags.
      class TagsType < Aws::Structure.new(
        :tags,
        :next_token)

        # @!attribute [rw] tags
        #   One or more tags.
        #   @return [Array<Types::TagDescription>]

        # @!attribute [rw] next_token
        #   The token to use when requesting the next set of items. If there are
        #   no additional items to return, the string is empty.
        #   @return [String]

      end

      # Contains the parameters for TerminateInstanceInAutoScalingGroup.
      # @note When making an API call, pass TerminateInstanceInAutoScalingGroupType
      #   data as a hash:
      #
      #       {
      #         instance_id: "XmlStringMaxLen19", # required
      #         should_decrement_desired_capacity: false, # required
      #       }
      class TerminateInstanceInAutoScalingGroupType < Aws::Structure.new(
        :instance_id,
        :should_decrement_desired_capacity)

        # @!attribute [rw] instance_id
        #   The ID of the instance.
        #   @return [String]

        # @!attribute [rw] should_decrement_desired_capacity
        #   If `true`, terminating the instance also decrements the size of the
        #   Auto Scaling group.
        #   @return [Boolean]

      end

      # Contains the parameters for UpdateAutoScalingGroup.
      # @note When making an API call, pass UpdateAutoScalingGroupType
      #   data as a hash:
      #
      #       {
      #         auto_scaling_group_name: "ResourceName", # required
      #         launch_configuration_name: "ResourceName",
      #         min_size: 1,
      #         max_size: 1,
      #         desired_capacity: 1,
      #         default_cooldown: 1,
      #         availability_zones: ["XmlStringMaxLen255"],
      #         health_check_type: "XmlStringMaxLen32",
      #         health_check_grace_period: 1,
      #         placement_group: "XmlStringMaxLen255",
      #         vpc_zone_identifier: "XmlStringMaxLen2047",
      #         termination_policies: ["XmlStringMaxLen1600"],
      #         new_instances_protected_from_scale_in: false,
      #       }
      class UpdateAutoScalingGroupType < Aws::Structure.new(
        :auto_scaling_group_name,
        :launch_configuration_name,
        :min_size,
        :max_size,
        :desired_capacity,
        :default_cooldown,
        :availability_zones,
        :health_check_type,
        :health_check_grace_period,
        :placement_group,
        :vpc_zone_identifier,
        :termination_policies,
        :new_instances_protected_from_scale_in)

        # @!attribute [rw] auto_scaling_group_name
        #   The name of the Auto Scaling group.
        #   @return [String]

        # @!attribute [rw] launch_configuration_name
        #   The name of the launch configuration.
        #   @return [String]

        # @!attribute [rw] min_size
        #   The minimum size of the Auto Scaling group.
        #   @return [Integer]

        # @!attribute [rw] max_size
        #   The maximum size of the Auto Scaling group.
        #   @return [Integer]

        # @!attribute [rw] desired_capacity
        #   The number of EC2 instances that should be running in the Auto
        #   Scaling group. This number must be greater than or equal to the
        #   minimum size of the group and less than or equal to the maximum size
        #   of the group.
        #   @return [Integer]

        # @!attribute [rw] default_cooldown
        #   The amount of time, in seconds, after a scaling activity completes
        #   before another scaling activity can start. The default is 300.
        #
        #   For more information, see [Auto Scaling Cooldowns][1] in the *Auto
        #   Scaling User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/Cooldown.html
        #   @return [Integer]

        # @!attribute [rw] availability_zones
        #   One or more Availability Zones for the group.
        #   @return [Array<String>]

        # @!attribute [rw] health_check_type
        #   The service to use for the health checks. The valid values are `EC2`
        #   and `ELB`.
        #   @return [String]

        # @!attribute [rw] health_check_grace_period
        #   The amount of time, in seconds, that Auto Scaling waits before
        #   checking the health status of an EC2 instance that has come into
        #   service. The default is 0.
        #
        #   For more information, see [Health Checks][1] in the *Auto Scaling
        #   User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/healthcheck.html
        #   @return [Integer]

        # @!attribute [rw] placement_group
        #   The name of the placement group into which you\'ll launch your
        #   instances, if any. For more information, see [Placement Groups][1]
        #   in the *Amazon Elastic Compute Cloud User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
        #   @return [String]

        # @!attribute [rw] vpc_zone_identifier
        #   The ID of the subnet, if you are launching into a VPC. You can
        #   specify several subnets in a comma-separated list.
        #
        #   When you specify `VPCZoneIdentifier` with `AvailabilityZones`,
        #   ensure that the subnets\' Availability Zones match the values you
        #   specify for `AvailabilityZones`.
        #
        #   For more information, see [Launching Auto Scaling Instances in a
        #   VPC][1] in the *Auto Scaling User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/asg-in-vpc.html
        #   @return [String]

        # @!attribute [rw] termination_policies
        #   A standalone termination policy or a list of termination policies
        #   used to select the instance to terminate. The policies are executed
        #   in the order that they are listed.
        #
        #   For more information, see [Controlling Which Instances Auto Scaling
        #   Terminates During Scale In][1] in the *Auto Scaling User Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/AutoScalingBehavior.InstanceTermination.html
        #   @return [Array<String>]

        # @!attribute [rw] new_instances_protected_from_scale_in
        #   Indicates whether newly launched instances are protected from
        #   termination by Auto Scaling when scaling in.
        #   @return [Boolean]

      end

    end
  end
end