locals = {
  bastion_autoscaling_group_ids     = ["${aws_autoscaling_group.bastions-kubernetesfarrukh-com.id}"]
  bastion_security_group_ids        = ["${aws_security_group.bastion-kubernetesfarrukh-com.id}"]
  bastions_role_arn                 = "${aws_iam_role.bastions-kubernetesfarrukh-com.arn}"
  bastions_role_name                = "${aws_iam_role.bastions-kubernetesfarrukh-com.name}"
  cluster_name                      = "kubernetesfarrukh.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-us-west-2a-masters-kubernetesfarrukh-com.id}", "${aws_autoscaling_group.master-us-west-2b-masters-kubernetesfarrukh-com.id}", "${aws_autoscaling_group.master-us-west-2c-masters-kubernetesfarrukh-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-kubernetesfarrukh-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-kubernetesfarrukh-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-kubernetesfarrukh-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-kubernetesfarrukh-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-kubernetesfarrukh-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.us-west-2a-kubernetesfarrukh-com.id}", "${aws_subnet.us-west-2b-kubernetesfarrukh-com.id}", "${aws_subnet.us-west-2c-kubernetesfarrukh-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-kubernetesfarrukh-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-kubernetesfarrukh-com.name}"
  region                            = "us-west-2"
  route_table_private-us-west-2a_id = "${aws_route_table.private-us-west-2a-kubernetesfarrukh-com.id}"
  route_table_private-us-west-2b_id = "${aws_route_table.private-us-west-2b-kubernetesfarrukh-com.id}"
  route_table_private-us-west-2c_id = "${aws_route_table.private-us-west-2c-kubernetesfarrukh-com.id}"
  route_table_public_id             = "${aws_route_table.kubernetesfarrukh-com.id}"
  subnet_us-west-2a_id              = "${aws_subnet.us-west-2a-kubernetesfarrukh-com.id}"
  subnet_us-west-2b_id              = "${aws_subnet.us-west-2b-kubernetesfarrukh-com.id}"
  subnet_us-west-2c_id              = "${aws_subnet.us-west-2c-kubernetesfarrukh-com.id}"
  subnet_utility-us-west-2a_id      = "${aws_subnet.utility-us-west-2a-kubernetesfarrukh-com.id}"
  subnet_utility-us-west-2b_id      = "${aws_subnet.utility-us-west-2b-kubernetesfarrukh-com.id}"
  subnet_utility-us-west-2c_id      = "${aws_subnet.utility-us-west-2c-kubernetesfarrukh-com.id}"
  vpc_cidr_block                    = "${aws_vpc.kubernetesfarrukh-com.cidr_block}"
  vpc_id                            = "${aws_vpc.kubernetesfarrukh-com.id}"
}
