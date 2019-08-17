resource "aws_vpc" "kubernetesfarrukh-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "kubernetesfarrukh-com" {
  domain_name         = "us-west-2.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "kubernetesfarrukh-com" {
  vpc_id          = "${aws_vpc.kubernetesfarrukh-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.kubernetesfarrukh-com.id}"
}
