terraform {
  backend "gcs" {
    bucket = "<bucket>"
  }
  required_version = ">1"
}
