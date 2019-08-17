resource "aws_key_pair" "kubernetes-kubernetesfarrukh-com-c6508367f9b042389c3a54e6d5298327" {
  key_name   = "kubernetes.kubernetesfarrukh.com-c6:50:83:67:f9:b0:42:38:9c:3a:54:e6:d5:29:83:27"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.kubernetesfarrukh.com-c6508367f9b042389c3a54e6d5298327_public_key")}"
}

