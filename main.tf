provider "aviatrix" {
    controller_ip      = var.controller_ip
    username           = var.username
    password           = var.password
}

# AWS VPCs
resource "aviatrix_vpc" "West2-VPC1" {
  cloud_type           = 1
  account_name         = var.aws_account_name 
  region               = "us-west-2"
  name                 = "West2-VPC1"
  cidr                 = "10.100.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}

resource "aviatrix_vpc" "West2-VPC2" {
  cloud_type           = 1
  account_name         = var.aws_account_name
  region               = "us-west-2"
  name                 = "West2-VPC2"
  cidr                 = "10.101.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}

resource "aviatrix_vpc" "AWS-West-Transit-FireNet" {
  cloud_type           = 1
  account_name         = var.aws_account_name
  region               = "us-west-2"
  name                 = "AWS-West-Transit-FireNet"
  cidr                 = "10.102.0.0/16"
  aviatrix_transit_vpc = true
  aviatrix_firenet_vpc = false
}

resource "aviatrix_vpc" "East2-VPC1" {
  cloud_type           = 1
  account_name         = var.aws_account_name
  region               = "us-east-2"
  name                 = "East2-VPC1"
  cidr                 = "10.105.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}

resource "aviatrix_vpc" "East2-VPC2" {
  cloud_type           = 1
  account_name         = var.aws_account_name
  region               = "us-east-2"
  name                 = "East2-VPC2"
  cidr                 = "10.106.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}

resource "aviatrix_vpc" "AWS-East-Transit" {
  cloud_type           = 1
  account_name         = var.aws_account_name
  region               = "us-east-2"
  name                 = "AWS-East-Transit"
  cidr                 = "10.107.0.0/16"
  aviatrix_transit_vpc = true
  aviatrix_firenet_vpc = false
}

resource "aviatrix_vpc" "APEast1-VPC1" {
  cloud_type           = 1
  account_name         = var.aws_account_name
  region               = "ap-east-1"
  name                 = "APEast1-VPC1"
  cidr                 = "10.110.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}

resource "aviatrix_vpc" "APEast1-VPC2" {
  cloud_type           = 1
  account_name         = var.aws_account_name
  region               = "ap-east-1"
  name                 = "APEast1-VPC2"
  cidr                 = "10.111.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}

resource "aviatrix_vpc" "APEast1-Transit" {
  cloud_type           = 1
  account_name         = var.aws_account_name
  region               = "ap-east-1"
  name                 = "APEast1-Transit"
  cidr                 = "10.112.0.0/16"
  aviatrix_transit_vpc = true
  aviatrix_firenet_vpc = false
}

# Azure VNETs
resource "aviatrix_vpc" "West-VNET1" {
  cloud_type           = 8
  account_name         = var.azure_account_name
  region               = "West US"
  name                 = "West-VNET1"
  cidr                 = "10.115.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}

resource "aviatrix_vpc" "West-VNET2" {
  cloud_type           = 8
  account_name         = var.azure_account_name
  region               = "West US"
  name                 = "West-VNET2"
  cidr                 = "10.116.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}

resource "aviatrix_vpc" "Azure-West-Transit-FireNet" {
  cloud_type           = 8
  account_name         = var.azure_account_name
  region               = "West US"
  name                 = "Azure-West-Transit-FireNet"
  cidr                 = "10.117.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = true
}

resource "aviatrix_vpc" "East-VNET1" {
  cloud_type           = 8
  account_name         = var.azure_account_name
  region               = "East US"
  name                 = "East-VNET1"
  cidr                 = "10.120.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}

resource "aviatrix_vpc" "East-VNET2" {
  cloud_type           = 8
  account_name         = var.azure_account_name
  region               = "East US"
  name                 = "East-VNET2"
  cidr                 = "10.121.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}

resource "aviatrix_vpc" "Azure-East-Transit" {
  cloud_type           = 8
  account_name         = var.azure_account_name
  region               = "East US"
  name                 = "Azure-East-Transit"
  cidr                 = "10.122.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = true
}

resource "aviatrix_vpc" "APEast-VNET1" {
  cloud_type           = 8
  account_name         = var.azure_account_name
  region               = "East Asia"
  name                 = "apeast-vnet1"
  cidr                 = "10.125.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}

resource "aviatrix_vpc" "APEast-VNET2" {
  cloud_type           = 8
  account_name         = var.azure_account_name
  region               = "East Asia"
  name                 = "apeast-vnet2"
  cidr                 = "10.126.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}

resource "aviatrix_vpc" "Azure-APEast-Transit" {
  cloud_type           = 8
  account_name         = var.azure_account_name
  region               = "East Asia"
  name                 = "azure-apeast-transit"
  cidr                 = "10.127.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = true
}

# AWS West Transit and Spokes
resource "aviatrix_spoke_gateway" "West2-VPC1-GW" {
    single_az_ha        = true
    gw_name             = "West2-VPC1-GW"
    vpc_id              = aviatrix_vpc.West2-VPC1.vpc_id
    cloud_type          = 1
    vpc_reg             = "us-west-2"
    transit_gw          = "AWS-West-Transit-GW"
    enable_active_mesh  = true
    gw_size             = "c5.xlarge"
    insane_mode         = true
    insane_mode_az      = "us-west-2a"
    account_name        = var.aws_account_name
    subnet              = "10.100.0.0/26"
    ha_eip              = ""
    ha_insane_mode_az   = "us-west-2a"
    ha_subnet           = "10.100.0.64/26"
    ha_gw_size          = "c5.xlarge"
    depends_on          = [aviatrix_transit_gateway.AWS-West-Transit-GW]
}

resource "aviatrix_spoke_gateway" "West2-VPC2-GW" {
    single_az_ha        = true
    gw_name             = "West2-VPC2-GW"
    vpc_id              = aviatrix_vpc.West2-VPC2.vpc_id
    cloud_type          = 1
    vpc_reg             = "us-west-2"
    transit_gw          = "AWS-West-Transit-GW"
    enable_active_mesh  = true
    gw_size             = "c5.xlarge"
    insane_mode         = true
    insane_mode_az      = "us-west-2a"
    account_name        = var.aws_account_name
    subnet              = "10.101.0.0/26"
    ha_eip              = ""
    ha_insane_mode_az   = "us-west-2a"
    ha_subnet           = "10.101.0.64/26"
    ha_gw_size          = "c5.xlarge"
    depends_on          = [aviatrix_transit_gateway.AWS-West-Transit-GW]
}

resource "aviatrix_transit_gateway" "AWS-West-Transit-GW" {
    single_az_ha        = true
    gw_name             = "AWS-West-Transit-GW"
    vpc_id              = aviatrix_vpc.AWS-West-Transit-FireNet.vpc_id
    cloud_type          = 1
    vpc_reg             = "us-west-2"
    connected_transit   = true
    enable_active_mesh  = true
    gw_size             = "c5.xlarge"
    insane_mode         = true
    insane_mode_az      = "us-west-2a"
    account_name        = var.aws_account_name
    subnet              = "10.102.0.192/26"
    ha_eip              = ""
    ha_insane_mode_az   = "us-west-2b"
    ha_subnet           = "10.102.1.64/26"
    ha_gw_size          = "c5.xlarge"
}

# AWS US East Transit and Spokes
resource "aviatrix_spoke_gateway" "East2-VPC1-GW" {
    single_az_ha        = true
    gw_name             = "East2-VPC1-GW"
    vpc_id              = aviatrix_vpc.East2-VPC1.vpc_id
    cloud_type          = 1
    vpc_reg             = "us-east-2"
    transit_gw          = "AWS-East-Transit-GW"
    enable_active_mesh  = true
    gw_size             = "c5.xlarge"
    insane_mode         = true
    insane_mode_az      = "us-east-2a"
    account_name        = var.aws_account_name
    subnet              = "10.105.0.0/26"
    depends_on          = [aviatrix_transit_gateway.AWS-East-Transit-GW]
}

resource "aviatrix_spoke_gateway" "East2-VPC2-GW" {
    single_az_ha        = true
    gw_name             = "East2-VPC2-GW"
    vpc_id              = aviatrix_vpc.East2-VPC2.vpc_id
    cloud_type          = 1
    vpc_reg             = "us-east-2"
    transit_gw          = "AWS-East-Transit-GW"
    enable_active_mesh  = true
    gw_size             = "t2.small"
    account_name        = var.aws_account_name
    subnet              = "10.106.64.0/20"
    depends_on          = [aviatrix_transit_gateway.AWS-East-Transit-GW]
}

resource "aviatrix_transit_gateway" "AWS-East-Transit-GW" {
    single_az_ha        = true
    gw_name             = "AWS-East-Transit-GW"
    vpc_id              = aviatrix_vpc.AWS-East-Transit.vpc_id
    cloud_type          = 1
    vpc_reg             = "us-east-2"
    connected_transit   = true
    enable_active_mesh  = true
    gw_size             = "c5.xlarge"
    insane_mode         = true
    insane_mode_az      = "us-east-2a"
    account_name        = var.aws_account_name
    subnet              = "10.107.0.192/26"
    ha_eip              = ""
    ha_insane_mode_az   = "us-east-2b"
    ha_subnet           = "10.107.1.64/26"
    ha_gw_size          = "c5.xlarge"
}

# AWS AP East Transit and Spokes
resource "aviatrix_spoke_gateway" "AP-East1-VPC1-GW" {
    single_az_ha        = true
    gw_name             = "AP-East1-VPC1-GW"
    vpc_id              = aviatrix_vpc.APEast1-VPC1.vpc_id
    cloud_type          = 1
    vpc_reg             = "ap-east-1"
    transit_gw          = "AWS-APEast1-Transit-GW"
    enable_active_mesh  = true
    gw_size             = "t3.micro"
    account_name        = var.aws_account_name
    subnet              = "10.110.64.0/20"
    depends_on          = [aviatrix_transit_gateway.AWS-APEast1-Transit-GW]
}

resource "aviatrix_spoke_gateway" "AP-East1-VPC2-GW" {
    single_az_ha        = true
    gw_name             = "AP-East1-VPC2-GW"
    vpc_id              = aviatrix_vpc.APEast1-VPC2.vpc_id
    cloud_type          = 1
    vpc_reg             = "ap-east-1"
    transit_gw          = "AWS-APEast1-Transit-GW"
    enable_active_mesh  = true
    gw_size             = "t3.micro"
    account_name        = var.aws_account_name
    subnet              = "10.111.64.0/20"
    depends_on          = [aviatrix_transit_gateway.AWS-APEast1-Transit-GW]
}

resource "aviatrix_transit_gateway" "AWS-APEast1-Transit-GW" {
    single_az_ha        = true
    gw_name             = "AWS-APEast1-Transit-GW"
    vpc_id              = aviatrix_vpc.APEast1-Transit.vpc_id
    cloud_type          = 1
    vpc_reg             = "ap-east-1"
    connected_transit   = true
    enable_active_mesh  = true
    gw_size             = "c5.large"
    account_name        = var.aws_account_name
    subnet              = "10.112.0.80/28"
    ha_eip              = ""
    ha_subnet           = "10.112.0.112/28"
    ha_gw_size          = "c5.large"
}


# Azure Transit and Spokes
resource "aviatrix_spoke_gateway" "West-VNET1-GW" {
    single_az_ha        = true
    gw_name             = "West-VNET1-GW"
    vpc_id              = aviatrix_vpc.West-VNET1.vpc_id
    cloud_type          = 8
    vpc_reg             = "West US"
    transit_gw          = "Azure-West-Transit-GW"
    enable_active_mesh  = true
    gw_size             = "Standard_B1ms"
    account_name        = var.azure_account_name
    subnet              = "10.115.0.0/20"
    ha_eip              = ""
    ha_subnet           = "10.115.32.0/20"
    ha_gw_size          = "Standard_B1ms"
}

resource "aviatrix_spoke_gateway" "West-VNET2-GW" {
    single_az_ha        = true
    gw_name             = "West-VNET2-GW"
    vpc_id              = aviatrix_vpc.West-VNET2.vpc_id
    cloud_type          = 8
    vpc_reg             = "West US"
    transit_gw          = "Azure-West-Transit-GW"
    enable_active_mesh  = true
    gw_size             = "Standard_B1ms"
    account_name        = var.azure_account_name
    subnet              = "10.116.0.0/20"
    ha_eip              = ""
    ha_subnet           = "10.116.32.0/20"
    ha_gw_size          = "Standard_B1ms"
}

resource "aviatrix_transit_gateway" "Azure-West-Transit-GW" {
    single_az_ha        = true
    gw_name             = "Azure-West-Transit-GW"
    vpc_id              = aviatrix_vpc.Azure-West-Transit-FireNet.vpc_id
    cloud_type          = 8
    vpc_reg             = "West US"
    connected_transit   = true
    enable_active_mesh  = true
    gw_size             = "Standard_B2ms"
    account_name        = var.azure_account_name
    subnet              = "10.117.0.32/28"
    ha_eip              = ""
    ha_subnet           = "10.117.0.48/28"
    ha_gw_size          = "Standard_B2ms"
}

resource "aviatrix_spoke_gateway" "East-VNET1" {
    single_az_ha        = true
    gw_name             = "East-VNET1"
    vpc_id              = aviatrix_vpc.East-VNET1.vpc_id
    cloud_type          = 8
    vpc_reg             = "East US"
    transit_gw          = "Azure-East-Transit-GW"
    enable_active_mesh  = true
    gw_size             = "Standard_B1ms"
    account_name        = var.azure_account_name
    subnet              = "10.120.0.0/20"
    depends_on          = [aviatrix_transit_gateway.Azure-East-Transit]
}

resource "aviatrix_spoke_gateway" "East-VNET2" {
    single_az_ha        = true
    gw_name             = "East-VNET2"
    vpc_id              = aviatrix_vpc.East-VNET2.vpc_id
    cloud_type          = 8
    vpc_reg             = "East US"
    transit_gw          = "Azure-East-Transit-GW"
    enable_active_mesh  = true
    gw_size             = "Standard_B1ms"
    account_name        = var.azure_account_name
    subnet              = "10.121.0.0/20"
    depends_on          = [aviatrix_transit_gateway.Azure-East-Transit]
}

resource "aviatrix_transit_gateway" "Azure-East-Transit" {
    single_az_ha        = true
    gw_name             = "Azure-East-Transit-GW"
    vpc_id              = aviatrix_vpc.Azure-East-Transit.vpc_id
    cloud_type          = 8
    vpc_reg             = "East US"
    enable_active_mesh  = true
    gw_size             = "Standard_D3_v2"
    insane_mode         = true
    account_name        = var.azure_account_name
    subnet              = "10.122.0.64/26"
    ha_eip              = ""
    ha_subnet           = "10.122.0.128/26"
    ha_gw_size          = "Standard_D3_v2"
}

resource "aviatrix_spoke_gateway" "APEast-VNET1" {
    single_az_ha        = true
    gw_name             = "APEast-VNET1"
    vpc_id              = aviatrix_vpc.APEast-VNET1.vpc_id
    cloud_type          = 8
    vpc_reg             = "East Asia"
    transit_gw          = "Azure-APEast-Transit-GW"
    enable_active_mesh  = true
    gw_size             = "Standard_D3_v2"
    insane_mode         = true
    account_name        = var.azure_account_name
    subnet              = "10.125.64.0/26"
    ha_eip              = ""
    ha_subnet           = "10.125.64.64/26"
    ha_gw_size          = "Standard_D3_v2"
}

resource "aviatrix_spoke_gateway" "APEast-VNET2" {
    single_az_ha        = true
    gw_name             = "APEast-VNET2"
    vpc_id              = aviatrix_vpc.APEast-VNET2.vpc_id
    cloud_type          = 8
    vpc_reg             = "East Asia"
    transit_gw          = "Azure-APEast-Transit-GW"
    enable_active_mesh  = true
    gw_size             = "Standard_DS3_v2"
    insane_mode         = true
    account_name        = var.azure_account_name
    subnet              = "10.126.64.0/26"
    ha_eip              = ""
    ha_subnet           = "10.126.64.64/26"
    ha_gw_size          = "Standard_DS3_v2"
}

resource "aviatrix_transit_gateway" "Azure-APEast-Transit-GW" {
    single_az_ha        = true
    gw_name             = "Azure-APEast-Transit-GW"
    vpc_id              = aviatrix_vpc.Azure-APEast-Transit.vpc_id
    cloud_type          = 8
    vpc_reg             = "East Asia"
    enable_active_mesh  = true
    gw_size             = "Standard_DS4_v2"
    insane_mode         = true
    account_name        = var.azure_account_name
    subnet              = "10.127.0.64/26"
    ha_eip              = ""
    ha_subnet           = "10.127.0.128/26"
    ha_gw_size          = "Standard_DS4_v2"
}

# AWS Transit Peering
# E-W-E-AP-W-AP
resource "aviatrix_transit_gateway_peering" "transit_gateway_peering1" {
  transit_gateway_name1 = "AWS-East-Transit-GW"
  transit_gateway_name2 = "AWS-West-Transit-GW"
}

resource "aviatrix_transit_gateway_peering" "transit_gateway_peering2" {
  transit_gateway_name1 = "AWS-East-Transit-GW"
  transit_gateway_name2 = "AWS-APEast1-Transit-GW"
}

resource "aviatrix_transit_gateway_peering" "transit_gateway_peering3" {
  transit_gateway_name1 = "AWS-West-Transit-GW"
  transit_gateway_name2 = "AWS-APEast1-Transit-GW"
}

# Azure Transit Peering
# E-W-E-AP-W-AP
resource "aviatrix_transit_gateway_peering" "transit_gateway_peering4" {
  transit_gateway_name1 = "Azure-East-Transit-GW"
  transit_gateway_name2 = "Azure-West-Transit-GW"
}

resource "aviatrix_transit_gateway_peering" "transit_gateway_peering5" {
  transit_gateway_name1 = "Azure-East-Transit-GW"
  transit_gateway_name2 = "Azure-APEast-Transit-GW"
}

resource "aviatrix_transit_gateway_peering" "transit_gateway_peering6" {
  transit_gateway_name1 = "Azure-West-Transit-GW"
  transit_gateway_name2 = "Azure-APEast-Transit-GW"
}

