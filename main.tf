module "submodule" {
  source = "./module"
}

# Turn the subkey data into a list behind a splat
data "null_data_source" "value_enumerator" {
  count = "${length(keys(module.submodule.out_mymap))}"
  inputs = "${module.submodule.out_mymap[element(keys(module.submodule.out_mymap), count.index)]}"
}
