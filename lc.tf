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
