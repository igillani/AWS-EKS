module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.31.6"

  cluster_name    = "my-eks-cluster"
  cluster_version = "1.30"

  vpc_id     = "vpc-0f98204cb635be39e"
  subnet_ids = [
    "subnet-037e58262067803e4",
    "subnet-07da3d94cbd01733c",
    "subnet-0c7ee65cba54ef8e6",
    "subnet-0d0fcd96f0e5dc7ec"
  ]

  tags = {
    Environment = "dev"
    Team        = "DevOps"
  }
}
