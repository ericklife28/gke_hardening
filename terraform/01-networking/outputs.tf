output network {
  description = "Network object created by vpc module"
  value = module.vpc.network
}

output subnetwork {
  description = "Subnetwork object created by vpc module"
  value = module.vpc.subnetwork
}

output secondary_range_name {
  description = "Name of the secondary ip range created by vpc module"
  value = module.vpc.secondary_range_name
}

output tertiary_range_name {
  description = "Name of the tertiery ip range created by vpc module"
  value = module.vpc.tertiary_range_name
}