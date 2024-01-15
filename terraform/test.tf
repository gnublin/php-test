
# Create an AWS App Runner Service for the Datadog Agent
resource "aws_apprunner_service" "datadog_agent_service" {
  service_name = "datadog-agent-service"

  source_configuration {
    image_repository {
      image_identifier      = "245918101727.dkr.ecr.eu-west-3.amazonaws.com/dd-test:latest"
      image_repository_type = "ECR"
    }
  }
}



# Output the ARN of the Datadog Agent Service
output "datadog_service_arn" {
  value = aws_apprunner_service.datadog_agent_service.arn
}
