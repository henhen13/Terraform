# VM Module

This module deploys a virtual machine in Azure with optional configurations for public IP, network security group, and backend pool association.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- An Azure account with the necessary permissions to create resources.

## Usage

1. **Clone the repository:**

    ```sh
    git clone https://github.com/your-repo/TerWebDB-main.git
    cd TerWebDB-main/modules/vm
    ```

2. **Edit the `terraform.tfvars` file:**

    Edit the `terraform.tfvars` file in the `vm` directory to match your environment:

    ```hcl
    vm_name              = "exampleVM"
    location             = "East US"
    resource_group_name  = "exampleResourceGroup"
    subnet_id            = "subnet-12345"
    vm_size              = "Standard_B2s"
    admin_username       = "exampleAdmin"
    admin_password       = "examplePassword123!"
    assign_public_ip     = true
    backend_pool_id      = "backend-pool-12345"
    nsg_id               = "nsg-12345"
    storage_account_name = "examplestorageaccount"
    storage_account_key  = "exampleStorageAccountKey"
    image_publisher      = "Canonical"
    image_offer          = "UbuntuServer"
    image_sku            = "18.04-LTS"
    image_version        = "latest"
    install_script_url   = "examplestorageaccount"
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

- `vm_name`: Name of the virtual machine.
- `location`: Location of the resource group.
- `resource_group_name`: Name of the resource group.
- `subnet_id`: ID of the subnet for the virtual machine.
- `vm_size`: Size of the virtual machine.
- `admin_username`: Admin username for the virtual machine.
- `admin_password`: Admin password for the virtual machine.
- `assign_public_ip`: Assign public IP to the virtual machine.
- `backend_pool_id`: ID of the load balancer backend pool.
- `nsg_id`: ID of the network security group.
- `storage_account_name`: Name of the storage account for scripts.
- `storage_account_key`: Storage account key for script access.
- `image_publisher`: Image publisher for the virtual machine.
- `image_offer`: Image offer for the virtual machine.
- `image_sku`: Image SKU for the virtual machine.
- `image_version`: Image version for the virtual machine.
- `install_script_url`: URL to the MariaDB installation script.

## Outputs

- `vm_id`: ID of the virtual machine.
- `public_ip_address`: Public IP address of the virtual machine.
- `admin_username`: Admin username of the virtual machine.
- `admin_password`: Admin password of the virtual machine.

