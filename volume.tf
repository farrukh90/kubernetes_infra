resource "aws_ebs_volume" "a-etcd-events-kubernetesfarrukh-com" {
  availability_zone = "us-west-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "a.etcd-events.kubernetesfarrukh.com"
    "k8s.io/etcd/events"                          = "a/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-kubernetesfarrukh-com" {
  availability_zone = "us-west-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "a.etcd-main.kubernetesfarrukh.com"
    "k8s.io/etcd/main"                            = "a/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-kubernetesfarrukh-com" {
  availability_zone = "us-west-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "b.etcd-events.kubernetesfarrukh.com"
    "k8s.io/etcd/events"                          = "b/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-kubernetesfarrukh-com" {
  availability_zone = "us-west-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "b.etcd-main.kubernetesfarrukh.com"
    "k8s.io/etcd/main"                            = "b/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-kubernetesfarrukh-com" {
  availability_zone = "us-west-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "c.etcd-events.kubernetesfarrukh.com"
    "k8s.io/etcd/events"                          = "c/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-kubernetesfarrukh-com" {
  availability_zone = "us-west-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesfarrukh.com"
    Name                                          = "c.etcd-main.kubernetesfarrukh.com"
    "k8s.io/etcd/main"                            = "c/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesfarrukh.com" = "owned"
  }
}

