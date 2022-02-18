#!/bin/bash

PROFILE_NAME=
STACK_NAME=
PROJECT_NAME=
ECS_SERVICE_NAME=
VPC_ID=
PUBLIC_SUBNETS=
HOST_ZONE_ID=
SERVICE_DOMAIN_NAME=

aws cloudformation deploy \
      --profile "$PROFILE_NAME" \
			--template fargate.yml \
			--stack-name "$STACK_NAME" \
			--capabilities CAPABILITY_NAMED_IAM \
			--parameter-overrides \
				ProjectName="$PROJECT_NAME" \
				EcsServiceName="$ECS_SERVICE_NAME" \
				VpcId="$VPC_ID" \
				PublicSubnets="$PUBLIC_SUBNETS" \
				HostZoneId="$HOST_ZONE_ID" \
				ServiceDomainName="$SERVICE_DOMAIN_NAME" \
