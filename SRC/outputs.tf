output "VMs" {
  value = {
    instance_name1 = yandex_compute_instance.platform1.name
    external_ip1 = yandex_compute_instance.platform1.network_interface.0.nat_ip_address
    instance_name2 = yandex_compute_instance.platform2.name
    external_ip2 = yandex_compute_instance.platform2.network_interface.0.nat_ip_address
  }
}
/*
output "admin_server_info" {
  value = "${local.test_map.admin} is admin for ${local.test_list[2]} server based on OS ${local.servers.production["image"]} with ${local.servers.production["cpu"]} vcpu, ${local.servers.production["ram"]} ram and ${local.servers.production["disks"][0]}, ${local.servers.production["disks"][1]}, ${local.servers.production["disks"][2]}, ${local.servers.production["disks"][3]} virtual disks."
}
*/

output "admin_server_info" {
  value = "${local.test_map.admin} is admin for ${local.test_list[length(local.test_list)-1]} server based on OS ${local.servers[local.test_list[length(local.test_list)-1]]["image"]} with ${local.servers[local.test_list[length(local.test_list)-1]]["cpu"]} vcpu, ${local.servers[local.test_list[length(local.test_list)-1]]["ram"]} ram, and ${local.servers.production["disks"][0]}, ${local.servers.production["disks"][1]}, ${local.servers.production["disks"][2]}, ${local.servers.production["disks"][3]} virtual disks."
}
