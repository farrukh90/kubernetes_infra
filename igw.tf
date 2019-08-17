resource "aws_internet_gateway" "kubernetesfarrukh-com" {
  vpc_id = "${aws_vpc.kubernetesfarrukh-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}
