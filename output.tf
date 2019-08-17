output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-kubernetesfarrukh-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-kubernetesfarrukh-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-kubernetesfarrukh-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-kubernetesfarrukh-com.name}"
}

output "cluster_name" {
  value = "kubernetesfarrukh.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-us-west-2a-masters-kubernetesfarrukh-com.id}", "${aws_autoscaling_group.master-us-west-2b-masters-kubernetesfarrukh-com.id}", "${aws_autoscaling_group.master-us-west-2c-masters-kubernetesfarrukh-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-kubernetesfarrukh-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-kubernetesfarrukh-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-kubernetesfarrukh-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-kubernetesfarrukh-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-kubernetesfarrukh-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.us-west-2a-kubernetesfarrukh-com.id}", "${aws_subnet.us-west-2b-kubernetesfarrukh-com.id}", "${aws_subnet.us-west-2c-kubernetesfarrukh-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-kubernetesfarrukh-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-kubernetesfarrukh-com.name}"
}

output "region" {
  value = "us-west-2"
}

output "route_table_private-us-west-2a_id" {
  value = "${aws_route_table.private-us-west-2a-kubernetesfarrukh-com.id}"
}

output "route_table_private-us-west-2b_id" {
  value = "${aws_route_table.private-us-west-2b-kubernetesfarrukh-com.id}"
}

output "route_table_private-us-west-2c_id" {
  value = "${aws_route_table.private-us-west-2c-kubernetesfarrukh-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.kubernetesfarrukh-com.id}"
}

output "subnet_us-west-2a_id" {
  value = "${aws_subnet.us-west-2a-kubernetesfarrukh-com.id}"
}
output "subnet_us-west-2b_id" {
  value = "${aws_subnet.us-west-2b-kubernetesfarrukh-com.id}"
}

output "subnet_us-west-2c_id" {
  value = "${aws_subnet.us-west-2c-kubernetesfarrukh-com.id}"
}

output "subnet_utility-us-west-2a_id" {
  value = "${aws_subnet.utility-us-west-2a-kubernetesfarrukh-com.id}"
}

output "subnet_utility-us-west-2b_id" {
  value = "${aws_subnet.utility-us-west-2b-kubernetesfarrukh-com.id}"
}

output "subnet_utility-us-west-2c_id" {
  value = "${aws_subnet.utility-us-west-2c-kubernetesfarrukh-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.kubernetesfarrukh-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.kubernetesfarrukh-com.id}"
}