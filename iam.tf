resource "aws_iam_instance_profile" "bastions-kubernetesfarrukh-com" {
  name = "bastions.kubernetesfarrukh.com"
  role = "${aws_iam_role.bastions-kubernetesfarrukh-com.name}"
}

resource "aws_iam_instance_profile" "masters-kubernetesfarrukh-com" {
  name = "masters.kubernetesfarrukh.com"
  role = "${aws_iam_role.masters-kubernetesfarrukh-com.name}"
}

resource "aws_iam_instance_profile" "nodes-kubernetesfarrukh-com" {
  name = "nodes.kubernetesfarrukh.com"
  role = "${aws_iam_role.nodes-kubernetesfarrukh-com.name}"
}

resource "aws_iam_role" "bastions-kubernetesfarrukh-com" {
  name               = "bastions.kubernetesfarrukh.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.kubernetesfarrukh.com_policy")}"
}

resource "aws_iam_role" "masters-kubernetesfarrukh-com" {
  name               = "masters.kubernetesfarrukh.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.kubernetesfarrukh.com_policy")}"
}

resource "aws_iam_role" "nodes-kubernetesfarrukh-com" {
  name               = "nodes.kubernetesfarrukh.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.kubernetesfarrukh.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-kubernetesfarrukh-com" {
  name   = "bastions.kubernetesfarrukh.com"
  role   = "${aws_iam_role.bastions-kubernetesfarrukh-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.kubernetesfarrukh.com_policy")}"
}

resource "aws_iam_role_policy" "masters-kubernetesfarrukh-com" {
  name   = "masters.kubernetesfarrukh.com"
  role   = "${aws_iam_role.masters-kubernetesfarrukh-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.kubernetesfarrukh.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-kubernetesfarrukh-com" {
  name   = "nodes.kubernetesfarrukh.com"
  role   = "${aws_iam_role.nodes-kubernetesfarrukh-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.kubernetesfarrukh.com_policy")}"
}

