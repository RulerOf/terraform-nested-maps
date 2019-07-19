variable "mymap" {
  type        = "map"
  default = {
    key1 = {
      subkey1 = "k1_subval1"
      subkey2 = "k1_subval2"
    },
    key2 = {
      subkey1 = "k2_subval1"
      subkey2 = "k2_subval2"
    }
  }
}

output "out_mymap" {
  value = "${var.mymap}"
}
