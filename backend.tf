terraform  {
 backend "s3" {
    bucket = "kubernetesfarrukhstate.com" 
    key = "terrastate"
    region = "us-west-2" 
  }
}
