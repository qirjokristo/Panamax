Panamax is a personal project designed to learning the process of launching and managing infrastructure on AWS Elastic Kubernetes Service (EKS). The code sets up an EKS cluster with an application and exposes its ingress to the internet using Terraform and some manifests. This project leverages GitHub Actions for continuous integration and deployment, 

-Features

Automated EKS Cluster Deployment: Launch and manage EKS clusters with Terraform scripts.

Scalability: Easily scale your infrastructure to meet your application's demands.

Configuration Management: Customized EKS setup with configurable parameters.

Ingress Exposure: Automatically sets up and exposes ingress to the internet.

Security: Implements AWS best practices for securing EKS clusters.

Customizable Terraform Variables: Edit the variables.tf and locals.tf files to match desired configuration.

-Github Actions

CI/CD Integration: Seamlessly integrates with GitHub Actions for continuous deployment.

GitHub Actions Workflow: Panamax includes a GitHub Actions workflow to automate the deployment process. The workflow is triggered manually via the workflow_dispatch event.

Workflow Configuration: The workflow file is located at .github/workflows/deploy.yml. It includes inputs for AWS credentials, region, and S3 state bucket.
