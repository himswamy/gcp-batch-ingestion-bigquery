terraform {
  backend "gcs" {
    bucket = "tf-state-gcp-batch-ingestion"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "grey-sort-challenge"
}

resource "google_storage_bucket" "funky-bucket" {
  name = "batch-pipeline"
  storage_class = "REGIONAL"
}
