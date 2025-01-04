data "aws_region" "current" {}

resource "aws_vpc_endpoint" "ecs_endpoint" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.${data.aws_region.current.name}.ecs"
  vpc_endpoint_type = "Interface"

  subnet_ids         = var.ecs_endpoint_subnet_id
  security_group_ids = var.sg_ecs_endpoint

  tags = var.endpoint_tags
}


resource "aws_vpc_endpoint" "ecs_agent_endpoint" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.${data.aws_region.current.name}.ecs-agent"
  vpc_endpoint_type = "Interface"

  subnet_ids         = var.ecs_agent_endpoint_subnet_id
  security_group_ids = var.sg_ecs_agent_endpoint

  tags = var.endpoint_tags
}


resource "aws_vpc_endpoint" "ecs_telemetry_endpoint" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.${data.aws_region.current.name}.ecs-telemetry"
  vpc_endpoint_type = "Interface"

  subnet_ids         = var.ecs_telemetry_endpoint_subnet_id
  security_group_ids = var.sg_ecs_telemetry_endpoint

  tags = var.endpoint_tags
}


resource "aws_vpc_endpoint" "ecr_api_endpoint" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.${data.aws_region.current.name}.ecr.api"
  vpc_endpoint_type = "Interface"

  subnet_ids         = var.ecr_api_endpoint_subnet_id
  security_group_ids = var.sg_ecr_api_endpoint

  tags = var.endpoint_tags
}

resource "aws_vpc_endpoint" "ecr_dkr_endpoint" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.${data.aws_region.current.name}.ecr.dkr"
  vpc_endpoint_type = "Interface"

  subnet_ids         = var.ecr_dkr_endpoint_subnet_id
  security_group_ids = var.sg_ecr_dkr_endpoint

  tags = var.endpoint_tags
}

resource "aws_vpc_endpoint" "s3_endpoint" {
  count             = var.ecr_api_endpoint_subnet_id != null ? 1 : 0
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.${data.aws_region.current.name}.s3"
  vpc_endpoint_type = "Gateway"

  tags = var.endpoint_tags
}
