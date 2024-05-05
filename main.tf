resource "google_storage_bucket" "my-bucket-01" {
  name                     = "tt-githubdemo-bucket-01"
  project                  = "central-rampart-421909-r3"
  location                 = "US"
  force_destroy            = true
  public_access_prevention = "enforced"
}
