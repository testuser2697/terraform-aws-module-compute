locals {
  normalized_instances = {
    for name, instance in var.instances :
    replace(lower(trimspace(name)), " ", "") => instance
  }

  mod_tags = merge(
    var.base_tags,
    { manager = "Michael Coulling-Green (NetMod v1.0.0)" }
  )
}
