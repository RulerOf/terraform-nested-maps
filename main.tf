module "submodule" {
  source = "./module"
}

# Toplevel key metadata from the submodule output
locals {
  toplevel_key_count = "${length(keys(module.submodule.out_mymap))}"
  toplevel_key_list = "${keys(module.submodule.out_mymap)}"
}

data "null_data_source" "subkey_enumerator" {
  count = "${local.toplevel_key_count}"
  inputs = "${module.submodule.out_mymap[local.toplevel_key_list[count.index]]}"
}
