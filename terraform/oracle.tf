resource "oci_core_instance" "andreas-sk-de" {
  availability_domain = "AD-1"
  compartment_id      = var.oracle_compartment_id
  shape               = "VM.Standard.A1.Flex"

  display_name   = "andreas-sk.de"
  hostname_label = "andreas-sk-de"

  source_details {
    boot_volume_size_in_gbs = 200
    source_type             = "image"
    source_id               = data.oci_core_image.ubuntu_2204.image_id
  }

  create_vnic_details {
    assign_public_ip = true
  }

  metadata = {
    ssh_authorized_keys = "${var.ssh_pub_key}\n${var.workstation_ssh_pub_key}"
  }
}

data "oci_core_image" "ubuntu_2204" {
  image_id = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaa7wq4opozz63gwzrolqmalwadtckpke5ehhxh634myjquvwlzetyq"
}
