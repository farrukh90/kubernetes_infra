resource "aws_autoscaling_attachment" "bastions-kubernetesfarrukh-com" {
  elb                    = "${aws_elb.bastion-kubernetesfarrukh-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-kubernetesfarrukh-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-west-2a-masters-kubernetesfarrukh-com" {
  elb                    = "${aws_elb.api-kubernetesfarrukh-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2a-masters-kubernetesfarrukh-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-west-2b-masters-kubernetesfarrukh-com" {
  elb                    = "${aws_elb.api-kubernetesfarrukh-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2b-masters-kubernetesfarrukh-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-west-2c-masters-kubernetesfarrukh-com" {
  elb                    = "${aws_elb.api-kubernetesfarrukh-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2c-masters-kubernetesfarrukh-com.id}"
}