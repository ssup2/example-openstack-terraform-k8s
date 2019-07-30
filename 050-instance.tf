resource "openstack_compute_instance_v2" "vm01" {
  name  = "vm01"
  image_id = "${var.image-ubuntu}"
  flavor_id = "${openstack_compute_flavor_v2.flavor.id}"
  
  network {
    name = "internal-net"
  }
}

resource "openstack_compute_instance_v2" "vm02" {
  name  = "vm02"
  image_id = "${var.image-ubuntu}"
  flavor_id = "${openstack_compute_flavor_v2.flavor.id}"
  
  network {
    name = "internal-net"
  }
}

resource "openstack_compute_instance_v2" "vm03" {
  name  = "vm03"
  image_id = "${var.image-ubuntu}"
  flavor_id = "${openstack_compute_flavor_v2.flavor.id}"
  
  network {
    name = "internal-net"
  }
}

resource "openstack_compute_instance_v2" "vm09" {
  name  = "vm09"
  image_id = "${var.image-ubuntu}"
  flavor_id = "${openstack_compute_flavor_v2.flavor.id}"
  
  network {
    name = "internal-net"
  }
}

resource "openstack_compute_floatingip_associate_v2" "fip" {
  floating_ip = "${openstack_networking_floatingip_v2.fip.address}"
  instance_id = "${openstack_compute_instance_v2.vm09.id}"
}
