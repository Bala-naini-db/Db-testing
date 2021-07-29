provider "google" {
  project     = "prefab-breaker-319803"
  region      = "us-central1"
  credentials = file("tfsvc.json")
  #credentials = var.Environment_Variables
  #access_token = "ya29.a0ARrdaM-oE8qpPqQYKB91dU-KwmwpeRREmQ3dQv8Cw7swwDyhFRIwn5wr9-EzNK0iZ2UCNGvL5xejx42A3ZIstccWBzik2iG2JHXHIzKNgc7QSXabM0D9BJ88KJcEzwTbwu-Ak_rvhqtQrPr04WpoqIfqgN4cEoO0gmUz"
}
