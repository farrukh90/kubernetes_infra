resource "aws_elb" "api-kubernetesfarrukh-com" {
  name = "api-kubernetesfarrukh-com-vn3e2q"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-kubernetesfarrukh-com.id}"]
  subnets         = ["${aws_subnet.utility-us-west-2a-kubernetesfarrukh-com.id}", "${aws_subnet.utility-us-west-2b-kubernetesfarrukh-com.id}", "${aws_subnet.utility-us-west-2c-kubernetesfarrukh-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "api.kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_elb" "bastion-kubernetesfarrukh-com" {
  name = "bastion-kubernetesfarrukh-kt84jc"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-kubernetesfarrukh-com.id}"]
  subnets         = ["${aws_subnet.utility-us-west-2a-kubernetesfarrukh-com.id}", "${aws_subnet.utility-us-west-2b-kubernetesfarrukh-com.id}", "${aws_subnet.utility-us-west-2c-kubernetesfarrukh-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "bastion.kubernetesfarrukh.com"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}
