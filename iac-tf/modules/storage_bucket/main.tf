/*resource "random_id" "instance_id" {
  byte_length = 8
  
}*/

resource "google_storage_bucket" "default" {
  /*name = "bucket-tfstate-${random_id.instance_id.hex}" */
  name = var.bucket_name
  project_id = var.project_id
  labels = var.labels
  force_destroy = false
  location = var.region
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
  
}