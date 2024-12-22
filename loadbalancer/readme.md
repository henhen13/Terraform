# Load Balancer Module

This module creates a load balancer with a backend pool and health probe in Azure.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- An Azure account with the necessary permissions to create resources.

## Usage

1. **Clone the repository:**

    ```sh
    git clone https://github.com/your-repo/TerWebDB-main.git
    cd TerWebDB-main/modules/loadbalancer
    ```

2. **Edit the `terraform.tfvars` file:**

    Edit the `terraform.tfvars` file in the `loadbalancer` directory to match your environment:

    ```hcl
    location             = "East US"
    resource_group_name  = "exampleResourceGroup"
    lb_name              = "exampleLoadBalancer"
    subnet_id            = "subnet-12345"
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

- `location`: Azure region.
- `resource_group_name`: Name of the resource group.
- `lb_name`: Name of the load balancer.
- `subnet_id`: Subnet ID for the load balancer.

## Outputs

- `lb_id`: ID of the load balancer.
- `backend_pool_id`: ID of the backend address pool.

