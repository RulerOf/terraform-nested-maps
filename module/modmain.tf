variable "mymap" {
  type        = "map"
  default = {
    key1 = {
      subkey1 = "subval1"
      subkey2 = "subval2"
    },
    key2 = {
      subkey1 = "subval1"
      subkey2 = "subval2"
    }
  }
}

output "out_mymap" {
  value = "${var.mymap}"
}
