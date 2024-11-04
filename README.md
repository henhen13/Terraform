# Terraform
Terraform scripts for Azure etc.
# Azure Storage Account Terraform Project

This project provides Terraform configurations to create and manage an Azure Storage Account with a blob container and file share. It automates the setup and configuration of storage resources in Azure, enabling scalable and secure document storage.

## Project Structure

- **`main.tf`**: Defines Azure resources such as the Storage Account, Blob Container, and File Share.
- **`variables.tf`**: Contains variable definitions to parameterize the configuration.
- **`terraform.tfvars`**: Specifies variable values. **Important:** This file should not be committed to version control if it contains sensitive information.

## Prerequisites

- **Terraform**: Install Terraform version 0.12 or later.
- **Azure CLI**: Ensure you are logged in to Azure CLI (`az login`).


