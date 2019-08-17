resource "aws_launch_configuration" "bastions-kubernetesfarrukh-com" {
  name_prefix                 = "bastions.kubernetesfarrukh.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesfarrukh-com-c6508367f9b042389c3a54e6d5298327.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-kubernetesfarrukh-com.id}"
  security_groups             = ["${aws_security_group.bastion-kubernetesfarrukh-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-west-2a-masters-kubernetesfarrukh-com" {
  name_prefix                 = "master-us-west-2a.masters.kubernetesfarrukh.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesfarrukh-com-c6508367f9b042389c3a54e6d5298327.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesfarrukh-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesfarrukh-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-west-2a.masters.kubernetesfarrukh.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-west-2b-masters-kubernetesfarrukh-com" {
  name_prefix                 = "master-us-west-2b.masters.kubernetesfarrukh.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesfarrukh-com-c6508367f9b042389c3a54e6d5298327.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesfarrukh-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesfarrukh-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-west-2b.masters.kubernetesfarrukh.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-west-2c-masters-kubernetesfarrukh-com" {
  name_prefix                 = "master-us-west-2c.masters.kubernetesfarrukh.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesfarrukh-com-c6508367f9b042389c3a54e6d5298327.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesfarrukh-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesfarrukh-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-west-2c.masters.kubernetesfarrukh.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-kubernetesfarrukh-com" {
  name_prefix                 = "nodes.kubernetesfarrukh.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesfarrukh-com-c6508367f9b042389c3a54e6d5298327.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-kubernetesfarrukh-com.id}"
  security_groups             = ["${aws_security_group.nodes-kubernetesfarrukh-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.kubernetesfarrukh.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

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

resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.kubernetesfarrukh-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.kubernetesfarrukh-com.id}"
}

resource "aws_route" "private-us-west-2a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-2a-kubernetesfarrukh-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-2a-kubernetesfarrukh-com.id}"
}

resource "aws_route" "private-us-west-2b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-2b-kubernetesfarrukh-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-2b-kubernetesfarrukh-com.id}"
}

resource "aws_route" "private-us-west-2c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-2c-kubernetesfarrukh-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-2c-kubernetesfarrukh-com.id}"
}

resource "aws_route53_record" "api-kubernetesfarrukh-com" {
  name = "api.kubernetesfarrukh.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-kubernetesfarrukh-com.dns_name}"
    zone_id                = "${aws_elb.api-kubernetesfarrukh-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z71VIT10X6AE4"
}

resource "aws_route53_record" "bastion-kubernetesfarrukh-com" {
  name = "bastion.kubernetesfarrukh.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-kubernetesfarrukh-com.dns_name}"
    zone_id                = "${aws_elb.bastion-kubernetesfarrukh-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z71VIT10X6AE4"
}

resource "aws_route53_zone_association" "Z71VIT10X6AE4" {
  zone_id = "/hostedzone/Z71VIT10X6AE4"
  vpc_id  = "${aws_vpc.kubernetesfarrukh-com.id}"
}

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

resource "aws_security_group" "api-elb-kubernetesfarrukh-com" {
  name        = "api-elb.kubernetesfarrukh.com"
  vpc_id      = "${aws_vpc.kubernetesfarrukh-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "api-elb.kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_security_group" "bastion-elb-kubernetesfarrukh-com" {
  name        = "bastion-elb.kubernetesfarrukh.com"
  vpc_id      = "${aws_vpc.kubernetesfarrukh-com.id}"
  description = "Security group for bastion ELB"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "bastion-elb.kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_security_group" "bastion-kubernetesfarrukh-com" {
  name        = "bastion.kubernetesfarrukh.com"
  vpc_id      = "${aws_vpc.kubernetesfarrukh-com.id}"
  description = "Security group for bastion"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "bastion.kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_security_group" "masters-kubernetesfarrukh-com" {
  name        = "masters.kubernetesfarrukh.com"
  vpc_id      = "${aws_vpc.kubernetesfarrukh-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "masters.kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_security_group" "nodes-kubernetesfarrukh-com" {
  name        = "nodes.kubernetesfarrukh.com"
  vpc_id      = "${aws_vpc.kubernetesfarrukh-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "nodes.kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesfarrukh-com.id}"
  source_security_group_id = "${aws_security_group.masters-kubernetesfarrukh-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetesfarrukh-com.id}"
  source_security_group_id = "${aws_security_group.masters-kubernetesfarrukh-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetesfarrukh-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesfarrukh-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-kubernetesfarrukh-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-kubernetesfarrukh-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-elb-kubernetesfarrukh-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesfarrukh-com.id}"
  source_security_group_id = "${aws_security_group.bastion-kubernetesfarrukh-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetesfarrukh-com.id}"
  source_security_group_id = "${aws_security_group.bastion-kubernetesfarrukh-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-kubernetesfarrukh-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesfarrukh-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-kubernetesfarrukh-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-kubernetesfarrukh-com.id}"
  from_port         = 3
  to_port           = 4
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-kubernetesfarrukh-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-kubernetesfarrukh-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesfarrukh-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesfarrukh-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesfarrukh-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesfarrukh-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesfarrukh-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesfarrukh-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesfarrukh-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesfarrukh-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.bastion-kubernetesfarrukh-com.id}"
  source_security_group_id = "${aws_security_group.bastion-elb-kubernetesfarrukh-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.bastion-elb-kubernetesfarrukh-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

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
