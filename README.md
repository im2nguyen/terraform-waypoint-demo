## Waypoint Github Actions Demo

To run this demo, you need to fork the repo then:

1. Install the [latest version of Waypoint locally](https://learn.hashicorp.com/tutorials/waypoint/get-started-install?in=waypoint/get-started-kubernetes). The current version is 0.2.0.
1. Navigate to infrastructure and run terraform init && terraform apply. This spins up all the infrastructure (VPC, EKS and ECR) necessary for the waypoint demo.
1. Once this completes (~15 mins), you need to configure kubectl then install waypoint to your EKS cluster. The commands can be found in the [README.md](https://github.com/im2nguyen/terraform-waypoint-demo/blob/main/infrastructure/README.md).
1. Once Waypoint finishes installation, go to the Web UI Address, generate a new token, then authenticate to the Web UI. If you're using Chrome, you may need to enter `thisisunsafe` to get pass the invalid SSL cert.
1. Add the following secrets to your GH repo: `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, `KUBE_CONFIG`, `WAYPOINT_SERVER_TOKEN`. The AWS credentials should have read/write access to the ECR repo. You can use the Waypoint token generated above (or generate a new Waypoint token - `waypoint token new`
1. Modify `views/pages/index.ejs` then create a PR. The action should trigger. Once it completes, it will comment on the PR with the deployment URL. ([Example PR](https://github.com/im2nguyen/terraform-waypoint-demo/pull/2))

## Waypoint AWS-EKS Example

|Title|Description|
|---|---|
|Pack|Cloud Native Buildpack|
|Cloud|AWS|
|Language|NodeJS|
|Docs|[Kubernetes](https://www.waypointproject.io/plugins/kubernetes)|
|Tutorial|[HashiCorp Learn](https://learn.hashicorp.com/tutorials/waypoint/get-started-kubernetes)|

Requirements:

- You must create an ECR registry named `waypoint-example` (or choose your own name and edit `waypoint.hcl`).
- Create an EKS cluster as shown at [HashiCorp Learn](https://learn.hashicorp.com/tutorials/terraform/eks?in=terraform/kubernetes).
- Configure `kubectl` to communicate to the Kubernetes cluster (also covered in the tutorial above).
