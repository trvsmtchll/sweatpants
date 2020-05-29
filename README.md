# Sweatpants

This is a multicloud multiregion Aviatrix Transit example built with Aviatrix.

## Prerequisites

- Aviatrix Controller up and running
- AWS Access Account defined in Controller
- Azure Access Account defined in Controller
- Hong Kong region enabled for AWS (takes about 30 min to enable)
- Sufficient EIPs available (recommend upping standard quota from 5 to 100 in all AWS regions in scope)
- Sufficient Compute Quotas available in Azure 

```
        Resource Manager, EASTASIA, DSv3 Series / 30
        Resource Manager, EASTASIA, DSv2 Series / 30
        Resource Manager, EASTASIA, BS Series / 30
```
- terraform .12 

## Architecture
<img width="964" alt="MCNA Phase I" src="https://github.com/trvsmtchll/sweatpants/blob/master/img/architecture.png">

## Getting Started

This is an early iteration, future iterations will introduce modules to align with Terraform best practices additional infrastructure will be introduced.

1. Modify the ```terraform.tfvars``` file to reflect your values (controller_ip, username, password, aws_access_account, azure_access_account)
2. ```terraform init```
3. ```terraform plan```
4. ```terraform apply --auto-approve```
5. To destroy ```terraform destroy --auto-approve```

## What to expect

A significant amount of infrastructure will be deployed: networks, transit gateways, spoke gateways, and transit peerings.

This will be deployed in AWS and Azure in US East and West regions, additionally in Hong Kong.

Expect it to run ~3hrs E2E. You can observe progress on the terminal and in the Aviatrix Controller.

If for any reason you run into a limit (EIP or Compute), correct it and continue ```terraform apply --auto-approve```

At the end you should be able to verify what was provisioned, it should look like this..

Enjoy!

```
$ terraform state list
aviatrix_spoke_gateway.AP-East1-VPC1-GW
aviatrix_spoke_gateway.AP-East1-VPC2-GW
aviatrix_spoke_gateway.APEast-VNET1
aviatrix_spoke_gateway.APEast-VNET2
aviatrix_spoke_gateway.East-VNET1
aviatrix_spoke_gateway.East-VNET2
aviatrix_spoke_gateway.East2-VPC1-GW
aviatrix_spoke_gateway.East2-VPC2-GW
aviatrix_spoke_gateway.West-VNET1-GW
aviatrix_spoke_gateway.West-VNET2-GW
aviatrix_spoke_gateway.West2-VPC1-GW
aviatrix_spoke_gateway.West2-VPC2-GW
aviatrix_transit_gateway.AWS-APEast1-Transit-GW
aviatrix_transit_gateway.AWS-East-Transit-GW
aviatrix_transit_gateway.AWS-West-Transit-GW
aviatrix_transit_gateway.Azure-APEast-Transit-GW
aviatrix_transit_gateway.Azure-East-Transit
aviatrix_transit_gateway.Azure-West-Transit-GW
aviatrix_transit_gateway_peering.transit_gateway_peering1
aviatrix_transit_gateway_peering.transit_gateway_peering2
aviatrix_transit_gateway_peering.transit_gateway_peering3
aviatrix_transit_gateway_peering.transit_gateway_peering4
aviatrix_transit_gateway_peering.transit_gateway_peering5
aviatrix_transit_gateway_peering.transit_gateway_peering6
aviatrix_vpc.APEast-VNET1
aviatrix_vpc.APEast-VNET2
aviatrix_vpc.APEast1-Transit
aviatrix_vpc.APEast1-VPC1
aviatrix_vpc.APEast1-VPC2
aviatrix_vpc.AWS-East-Transit
aviatrix_vpc.AWS-West-Transit-FireNet
aviatrix_vpc.Azure-APEast-Transit
aviatrix_vpc.Azure-East-Transit
aviatrix_vpc.Azure-West-Transit-FireNet
aviatrix_vpc.East-VNET1
aviatrix_vpc.East-VNET2
aviatrix_vpc.East2-VPC1
aviatrix_vpc.East2-VPC2
aviatrix_vpc.West-VNET1
aviatrix_vpc.West-VNET2
aviatrix_vpc.West2-VPC1
aviatrix_vpc.West2-VPC2
```

