resource "oci_core_instance" "andreas-sk-de" {
  availability_domain = "FTem:EU-FRANKFURT-1-AD-2"
  compartment_id      = var.oracle_compartment_id
  display_name        = "andreas-sk.de"
  state               = "RUNNING"

  shape = "VM.Standard.A1.Flex"
  shape_config {
    memory_in_gbs = 8
    ocpus         = 4
  }

  source_details {
    boot_volume_size_in_gbs = 200
    boot_volume_vpus_per_gb = 120
    source_type             = "image"
    source_id               = data.oci_core_image.ubuntu_2204.image_id
  }

  create_vnic_details {
    assign_public_ip = true
    hostname_label   = "andreas-sk-de"
    subnet_id        = "ocid1.subnet.oc1.eu-frankfurt-1.aaaaaaaae2pkrlzidl5v6dpnvho4imhu44ca72fdes6ezyxvl43cdnhmk2oq"
  }

  metadata = {
    ssh_authorized_keys = "${var.ssh_pub_key}\n${var.workstation_ssh_pub_key}"
  }

  lifecycle {
    prevent_destroy = true
  }
}

data "oci_core_image" "ubuntu_2204" {
  image_id = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaj6g2lci5ed7nfhk46olwkhmwkzrobyo3jntnhkk7fnm2vqflorna"
}
