provider "openstack" {
  user_name   = "admin"
  tenant_name = "admin"
  password    = "admin"
  auth_url    = "http://192.168.0.40:5000/v3"
}
