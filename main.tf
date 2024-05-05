resource "google_storage_bucket" "my-bucket-01" {
  name                     = "tt-github-action-demo-bucket-01"
  project                  = "My First Project"
  id                       = "central-rampart-421909-r3"         
  location                 = "US"
  force_destroy            = true
  public_access_prevention = "enforced"
}
