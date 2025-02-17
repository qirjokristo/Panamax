resource "aws_eks_addon" "vpc-cni" {
  cluster_name = aws_eks_cluster.panamax.name
  addon_name   = "vpc-cni"
}

resource "null_resource" "calico" {
  depends_on = [null_resource.eks_context, aws_eks_addon.vpc-cni]
  provisioner "local-exec" {
    command = "kubectl apply -f ./eks_manifests/calico.yaml"
  }
}

resource "aws_eks_addon" "aws-ebs-csi-driver" {
  depends_on   = [aws_eks_node_group.panamax]
  cluster_name = aws_eks_cluster.panamax.name
  addon_name   = "aws-ebs-csi-driver"
}

resource "helm_release" "alb" {
  depends_on        = [aws_eks_node_group.panamax]
  dependency_update = true
  name              = "aws-load-balancer-controller"
  repository        = "https://aws.github.io/eks-charts"
  namespace         = "kube-system"
  chart             = "aws-load-balancer-controller"
  version           = "v1.8.2"
  values            = [file("${path.module}/eks_manifests/alb_values/values.yaml")]
}