resource "google_compute_network" "acme-vpc" {
  name = "acme-vpc"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "acme-subnet" {
 name          = "${var.name}-subnet"
 ip_cidr_range = "10.0.0.0/24"
 network       = google_compute_network.acme-vpc.id
#  depends_on    = ["google_compute_network.acme-vpc"]
 region      = "${var.region}"
}

resource "google_compute_firewall" "acme-vpc-firewall" {
  name    = "acme-firewall"
  network = google_compute_network.acme-vpc.id

  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000"]
  }
  source_tags = ["web"]
}

