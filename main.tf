terraform {
  required_version = ">= 1.0.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {}

resource "digitalocean_droplet" "wordpress1" {
  image     = "ubuntu-18-04-x64"
  name      = "wordpress1"
  region    = "nyc1"
  size      = "s-1vcpu-1gb"
  user_data = file("wordpress.yaml")
}
