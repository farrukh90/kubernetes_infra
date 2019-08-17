resource "aws_eip" "us-west-2a-kubernetesfarrukh-com" {
  vpc = true

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "us-west-2a.kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_eip" "us-west-2b-kubernetesfarrukh-com" {
  vpc = true

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "us-west-2b.kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_eip" "us-west-2c-kubernetesfarrukh-com" {
  vpc = true

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "us-west-2c.kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

