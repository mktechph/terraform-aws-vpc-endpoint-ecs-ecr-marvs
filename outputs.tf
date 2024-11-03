output "output_ecs_endpoint_id" {
  value = aws_vpc_endpoint.ecs_endpoint.id
}

output "output_ecs_agent_endpoint_id" {
  value = aws_vpc_endpoint.ecs_agent_endpoint.id
}

output "output_ecs_telemetry_endpoint_id" {
  value = aws_vpc_endpoint.ecs_telemetry_endpoint.id
}

output "output_ecr_api_endpoint_id" {
  value = aws_vpc_endpoint.ecr_api_endpoint.id
}

output "output_ecr_dkr_endpoint_id" {
  value = aws_vpc_endpoint.ecr_dkr_endpoint.id
}

output "output_s3_endpoint_id" {
  value = aws_vpc_endpoint.s3_endpoint[count.index].id
}