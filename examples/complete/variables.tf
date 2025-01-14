variable "region" {
  type        = string
  description = "AWS Region"
  default     = "eu-central-1"
}

variable "namespace" {
  type        = string
  description = "Namespace (e.g. `eg` or `cp`)"
  default     = "pwb"
}

variable "stage" {
  type        = string
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
  default     = "dev"
}

variable "name" {
  type        = string
  description = "Name  (e.g. `app`)"
  default     = "test"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name` and `attributes`"
}

variable "attributes" {
  type        = list
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = map
  default     = {}
  description = "Additional tags (e.g. `{ BusinessUnit = \"XYZ\" }`"
}

variable "enabled" {
  type        = string
  description = "Set to `false` to prevent the module from creating any resources"
  default     = "true"
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC to which the Virtual Private Gateway will be attached"
  default     = "vpc-79dc2213"
}

variable "vpn_gateway_amazon_side_asn" {
  description = "The Autonomous System Number (ASN) for the Amazon side of the VPN gateway. If you don't specify an ASN, the Virtual Private Gateway is created with the default ASN"
  default     = 64512
}

variable "customer_gateway_bgp_asn" {
  description = "The gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN)"
  default     = 65000
}

variable "customer_gateway_ip_address" {
  type        = string
  description = "The IP address of the gateway's Internet-routable external interface"
  default     = "86.83.103.197"
}

variable "route_table_ids" {
  type        = list
  description = "The IDs of the route tables for which routes from the Virtual Private Gateway will be propagated"
  default     = ["rtb-45a3d32f"]
}

variable "vpn_connection_static_routes_only" {
  type        = string
  description = "If set to `true`, the VPN connection will use static routes exclusively. Static routes must be used for devices that don't support BGP"
  default     = "true"
}

variable "vpn_connection_static_routes_destinations" {
  type        = list
  description = "List of CIDR blocks to be used as destination for static routes. Routes to destinations will be propagated to the route tables defined in `route_table_ids`"
  default     = ["192.168.0.0/16"]
}

variable "vpn_connection_tunnel1_inside_cidr" {
  type        = string
  description = "The CIDR block of the inside IP addresses for the first VPN tunnel"
  default     = "169.254.0.4/30"
}

variable "vpn_connection_tunnel2_inside_cidr" {
  type        = string
  description = "The CIDR block of the inside IP addresses for the second VPN tunnel"
  default     = "169.254.1.4/30"
}

variable "vpn_connection_tunnel1_preshared_key" {
  type        = string
  description = "The preshared key of the first VPN tunnel. The preshared key must be between 8 and 64 characters in length and cannot start with zero. Allowed characters are alphanumeric characters, periods(.) and underscores(_)"
  default     = "zeergeheim1"
}

variable "vpn_connection_tunnel2_preshared_key" {
  type        = string
  description = "The preshared key of the second VPN tunnel. The preshared key must be between 8 and 64 characters in length and cannot start with zero. Allowed characters are alphanumeric characters, periods(.) and underscores(_)"
  default     = "zeergeheim2"
}
