// Create VPC
//https://github.com/terraform-google-modules
resource "google_compute_network" "vpc" {
 name                    = "${var.name}-vpc"
 auto_create_subnetworks = "false"
}

// Create Subnet
resource "google_compute_subnetwork" "subnet" {
 name          = "${var.name}-subnet"
 ip_cidr_range = "${var.subnet_cidr}"
 network       = "${var.name}-vpc"
 depends_on    = ["google_compute_network.vpc"]
 region      = "${var.region}"
}

//google cloud instance

resource "google_compute_address" "static" {
  name = "ipv4-address"
}

resource "google_compute_instance" "example" {
  name          = "instance01"
  machine_type  = "f1-micro"
  zone          = "us-central1-a"
  depends_on    = ["google_compute_network.vpc"]


  boot_disk {
    initialize_params {
      image = "ubuntu-1604-lts"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link
#if you want to use external ip address.
    # access_config {
    #  //Ephemeral_IP = false
    #
    #  nat_ip = google_compute_address.static.address
    # }
  }
}






// VPC firewall configuration
# resource "google_compute_firewall" "firewall" {
#   name    = "${var.name}-firewall"
#   network = "${google_compute_network.vpc.name}"
#
#   allow {
#     protocol = "icmp"
#   }
#
#   allow {
#     protocol = "tcp"
#     ports    = ["22"]
#   }
#
#   source_ranges = ["0.0.0.0/0"]
# }
