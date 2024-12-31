AWS EKS Cluster Deployment with Terraform
This project demonstrates how to deploy an Amazon EKS (Elastic Kubernetes Service) cluster using Terraform. It includes all necessary configurations for provisioning the cluster, managing worker nodes, setting up networking, and applying IAM roles for secure access.

Repository
You can find the complete codebase and configuration files for this project in the GitHub repository: AWS-EKS.

Project Overview
This project uses Terraform to provision an Amazon EKS cluster along with all the necessary resources to run a Kubernetes environment on AWS.

Infrastructure as Code (IaC): All resources are defined and managed using Terraform.
EKS Cluster: Provisioning an Amazon EKS cluster to host Kubernetes workloads.
Managed Node Groups: Auto-scaling managed node groups to efficiently manage worker nodes.
Networking Integration: Integration with a pre-existing VPC and subnets for secure communication.
IAM Roles and Policies: Configuring IAM roles and policies for secure access to AWS resources.
GitHub Cleanup: Removed large files from the repository to ensure it stays under GitHub's file size limits.
Components Deployed
1. Terraform Configuration
This project uses the following Terraform modules and configurations:

EKS Module: terraform-aws-modules/eks/aws
AWS Provider: Configured for the us-east-1 region.
2. AWS Resources
Amazon EKS Cluster: The Kubernetes control plane is provisioned to manage Kubernetes workloads.
Managed Node Groups: Configures auto-scaling worker nodes.
IAM Roles and Policies: Configures roles and policies for EKS and worker nodes.
Networking: The EKS cluster is integrated with an existing VPC, enabling secure networking and communication between resources.
3. Key Outputs
Cluster Name: The name of the deployed EKS cluster.
Cluster Endpoint: URL used to interact with the Kubernetes API.
Cluster Security Group ID: The security group associated with the EKS cluster.
Node Security Group ID: The security group associated with the worker nodes.
Prerequisites
Before you begin, ensure the following tools are installed:

AWS CLI: Installed and configured with valid IAM credentials. Use aws configure to set up.
Terraform: Installed (version >= 1.3.0).
Kubectl: Installed and configured to interact with Kubernetes.
Deployment Steps
Follow these steps to deploy the EKS cluster:

1. Clone the Repository
First, clone the repository from GitHub:

bash
Copy code
git clone https://github.com/igillani/AWS-EKS.git
cd AWS-EKS
2. Set Up Prerequisites
Ensure that AWS CLI, Terraform, and kubectl are installed and configured on your system.

AWS CLI:
bash
Copy code
aws configure
Terraform: Initialize Terraform:
bash
Copy code
terraform init
3. Review and Modify Configuration (if needed)
Check the main.tf file, which contains the configuration for the EKS cluster. This file specifies the VPC, subnets, and node configurations. If necessary, adjust the values to fit your environment.

4. Validate Terraform Configuration
Before applying any changes, validate the Terraform configuration:

bash
Copy code
terraform validate
5. Generate Execution Plan
Create an execution plan to review the resources Terraform will create:

bash
Copy code
terraform plan
6. Apply Terraform Configuration
Deploy the resources by running:

bash
Copy code
terraform apply
Type yes to confirm the creation of resources.

7. Update Kubeconfig
Once the EKS cluster is created, configure kubectl to interact with the cluster:

bash
Copy code
aws eks update-kubeconfig --name my-eks-cluster --region us-east-1
8. Verify the Cluster
Check the nodes in the Kubernetes cluster:

bash
Copy code
kubectl get nodes
Components Deployed
Amazon EKS Cluster

Kubernetes control plane deployed with API endpoint access.
Integrated with VPC and subnets for secure communication.
Managed Node Groups

Worker nodes for Kubernetes workloads.
Auto-scaling configuration to manage capacity efficiently.
IAM Roles and Policies

IAM roles and policies for secure access to EKS and other AWS resources.
VPC Integration

Integrated with an existing VPC and subnets for networking.
Outputs
After the deployment is complete, the following outputs will be available:

Cluster Name: The name of the EKS cluster.
Cluster Endpoint: The URL to access the Kubernetes API.
Cluster Security Group ID: The security group for the EKS cluster.
Node Security Group ID: The security group for the worker nodes.
Cleanup
To destroy the deployed resources and free up AWS resources, run the following command:

bash
Copy code
terraform destroy
Type yes to confirm and remove all resources.

Key Learnings
This project provided practical experience in:

Automating the provisioning of AWS resources using Terraform.
Deploying and managing Kubernetes clusters using Amazon EKS.
Configuring managed node groups and integrating the EKS cluster with a VPC
