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
