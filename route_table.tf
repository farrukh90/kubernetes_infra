resource "aws_route_table" "kubernetesfarrukh-com" {
  vpc_id = "${aws_vpc.kubernetesfarrukh-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
    "kubernetes.io/kops/role"                     = "public"
  }
}

resource "aws_route_table" "private-us-west-2a-kubernetesfarrukh-com" {
  vpc_id = "${aws_vpc.kubernetesfarrukh-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "private-us-west-2a.kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
    "kubernetes.io/kops/role"                     = "private-us-west-2a"
  }
}

resource "aws_route_table" "private-us-west-2b-kubernetesfarrukh-com" {
  vpc_id = "${aws_vpc.kubernetesfarrukh-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "private-us-west-2b.kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
    "kubernetes.io/kops/role"                     = "private-us-west-2b"
  }
}

resource "aws_route_table" "private-us-west-2c-kubernetesfarrukh-com" {
  vpc_id = "${aws_vpc.kubernetesfarrukh-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "private-us-west-2c.kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
    "kubernetes.io/kops/role"                     = "private-us-west-2c"
  }
}

resource "aws_route_table_association" "private-us-west-2a-kubernetesfarrukh-com" {
  subnet_id      = "${aws_subnet.us-west-2a-kubernetesfarrukh-com.id}"
  route_table_id = "${aws_route_table.private-us-west-2a-kubernetesfarrukh-com.id}"
}

resource "aws_route_table_association" "private-us-west-2b-kubernetesfarrukh-com" {
  subnet_id      = "${aws_subnet.us-west-2b-kubernetesfarrukh-com.id}"
  route_table_id = "${aws_route_table.private-us-west-2b-kubernetesfarrukh-com.id}"
}

resource "aws_route_table_association" "private-us-west-2c-kubernetesfarrukh-com" {
  subnet_id      = "${aws_subnet.us-west-2c-kubernetesfarrukh-com.id}"
  route_table_id = "${aws_route_table.private-us-west-2c-kubernetesfarrukh-com.id}"
}

resource "aws_route_table_association" "utility-us-west-2a-kubernetesfarrukh-com" {
  subnet_id      = "${aws_subnet.utility-us-west-2a-kubernetesfarrukh-com.id}"
  route_table_id = "${aws_route_table.kubernetesfarrukh-com.id}"
}

resource "aws_route_table_association" "utility-us-west-2b-kubernetesfarrukh-com" {
  subnet_id      = "${aws_subnet.utility-us-west-2b-kubernetesfarrukh-com.id}"
  route_table_id = "${aws_route_table.kubernetesfarrukh-com.id}"
}

resource "aws_route_table_association" "utility-us-west-2c-kubernetesfarrukh-com" {
  subnet_id      = "${aws_subnet.utility-us-west-2c-kubernetesfarrukh-com.id}"
  route_table_id = "${aws_route_table.kubernetesfarrukh-com.id}"
}
