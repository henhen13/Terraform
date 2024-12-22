# Network Module

This module creates a virtual network with subnets and network security groups in Azure.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- An Azure account with the necessary permissions to create resources.

## Usage

1. **Clone the repository:**

    ```sh
    git clone https://github.com/henhen13/Terraform/tree/main/network
    ```

2. **Edit the `terraform.tfvars` file:**

    Edit the `terraform.tfvars` file in the `network` directory to match your environment:

    ```hcl
    vnet_name            = "exampleVNet"
    location             = "East US"
    resource_group_name  = "exampleResourceGroup"
    address_space        = ["10.0.0.0/16"]
    db_subnet_name       = "dbSubnet"
    db_subnet_prefix     = "10.0.1.0/24"
    web_subnet_name      = "webSubnet"
    web_subnet_prefix    = "10.0.2.0/24"
    ```

3. **Initialize Terraform:**

    ```sh
    terraform init
    ```

4. **Apply the configuration:**

    ```sh
    terraform apply
    ```

    Confirm the apply with `yes` when prompted.

## Variables

- `vnet_name`: Name for the Virtual Network.
- `location`: Azure region.
- `resource_group_name`: Name for the resource group.
- `address_space`: Network address space.
- `db_subnet_name`: Name for the database subnet.
- `db_subnet_prefix`: Address prefix for the database subnet.
- `web_subnet_name`: Name for the web subnet.
- `web_subnet_prefix`: Address prefix for the web subnet.

## Outputs

- `vnet_id`: ID of the virtual network.
- `web_subnet_id`: ID of the web subnet.
- `db_subnet_id`: ID of the database subnet.
- `web_nsg_id`: ID of the network security group for web servers.
