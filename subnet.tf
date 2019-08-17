resource "aws_subnet" "us-west-2a-kubernetesfarrukh-com" {
  vpc_id            = "${aws_vpc.kubernetesfarrukh-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "us-west-2a"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "us-west-2a.kubernetesfarrukh.com"
    SubnetType                                    = "Private"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "us-west-2b-kubernetesfarrukh-com" {
  vpc_id            = "${aws_vpc.kubernetesfarrukh-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "us-west-2b"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "us-west-2b.kubernetesfarrukh.com"
    SubnetType                                    = "Private"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "us-west-2c-kubernetesfarrukh-com" {
  vpc_id            = "${aws_vpc.kubernetesfarrukh-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "us-west-2c"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "us-west-2c.kubernetesfarrukh.com"
    SubnetType                                    = "Private"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "utility-us-west-2a-kubernetesfarrukh-com" {
  vpc_id            = "${aws_vpc.kubernetesfarrukh-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "us-west-2a"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "utility-us-west-2a.kubernetesfarrukh.com"
    SubnetType                                    = "Utility"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_subnet" "utility-us-west-2b-kubernetesfarrukh-com" {
  vpc_id            = "${aws_vpc.kubernetesfarrukh-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "us-west-2b"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "utility-us-west-2b.kubernetesfarrukh.com"
    SubnetType                                    = "Utility"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_subnet" "utility-us-west-2c-kubernetesfarrukh-com" {
  vpc_id            = "${aws_vpc.kubernetesfarrukh-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "us-west-2c"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "utility-us-west-2c.kubernetesfarrukh.com"
    SubnetType                                    = "Utility"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
}

