module "prod_infra" {
  source = "../../tf-module"

  aws_region = var.region
  environment = var.environment
  ecr_values = {
    repository_name = "registry-${var.environment}"
  }
  ecs_values = {
    cluster_name = "ecs-cluster-${var.environment}"
    service_name = "ecs-service-${var.environment}"
  }
  lb_values = {
    name     = "tf-alb-${var.environment}"
    internal = false
    target_group = {
      name     = "tf-alb-tg-${var.environment}"
      port     = 80
      protocol = "HTTP"
    }
  }
}


terraform {
  backend "s3" {
    bucket         = "infra-state-ecs-prod"
    key            = "terraform/terrform_cluster.tfstate"
    dynamodb_table = "terraform-up-and-running-locks"
    region         = "ap-south-1"
    encrypt        = "true"
  }
}

