resource "aws_nat_gateway" "us-west-2a-kubernetesfarrukh-com" {
  allocation_id = "${aws_eip.us-west-2a-kubernetesfarrukh-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-2a-kubernetesfarrukh-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "us-west-2a.kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-west-2b-kubernetesfarrukh-com" {
  allocation_id = "${aws_eip.us-west-2b-kubernetesfarrukh-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-2b-kubernetesfarrukh-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "us-west-2b.kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-west-2c-kubernetesfarrukh-com" {
  allocation_id = "${aws_eip.us-west-2c-kubernetesfarrukh-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-2c-kubernetesfarrukh-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "us-west-2c.kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}