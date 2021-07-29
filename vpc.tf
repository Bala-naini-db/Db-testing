// Create VPC
//https://github.com/terraform-google-modules
resource "google_compute_network" "vpc" {
 name                    = var.vpc_name
 auto_create_subnetworks = "false"
}

// Create Subnet
resource "google_compute_subnetwork" "subnet" {
 name          = var.subnet_name
 ip_cidr_range = var.subnet_cidr
 network       = google_compute_network.vpc.id
 depends_on    = ["google_compute_network.vpc"]
 region      = var.region
}

//google cloud instance

resource "google_compute_address" "static" {
  name = "ipv4-address1"
}

resource "google_compute_instance" "restrict-public-ip-vm" {
  description  = "Testing the Sentinel policy to check if Public IP is disabled"
  name         = var.vm_name
  machine_type = var.machine_size
  zone         = var.zone
  project      = var.project
  depends_on    = ["google_compute_network.vpc"]

  boot_disk {
    initialize_params {
      image = var.image_name
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link
  }
}
