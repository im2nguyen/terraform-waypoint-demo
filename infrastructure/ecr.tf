resource "aws_ecr_repository" "twv-sample-app" {
  name = "twv-sample-app-image"
}

# module "ecr_ci_twv-sample-app" {
#   source = "trussworks/iam-ecr-ci/aws"

#   ecr_repo = aws_ecr_repository.twv-sample-app.name
#   ci_name  = "waypoint"
# }
