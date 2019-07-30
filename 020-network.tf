resource "openstack_networking_network_v2" "network" {
  name = "internal-net"
}

resource "openstack_networking_subnet_v2" "subnet" {
  name = "internal-sub"
  network_id = "${openstack_networking_network_v2.network.id}"
  cidr = "30.0.0.0/24"
  dns_nameservers = ["8.8.8.8"]
}

resource "openstack_networking_router_interface_v2" "interface" {
  router_id = "${var.router-external}"
  subnet_id = "${openstack_networking_subnet_v2.subnet.id}"
}
