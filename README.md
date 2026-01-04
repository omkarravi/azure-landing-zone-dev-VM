This repository contains modular Terraform code to provision **Linux-based Azure Development Virtual Machines** designed for hosting a **React-based application**.

## Repository Structure
- **env/** – Environment-specific Terraform configurations (dev/prod)
- **modules/** – Reusable Terraform modules for Azure resources

## Use Case
- Provision a secure Linux VM on Azure for development purposes
- Host and run a React-based application on the VM
- Serve as a foundation for CI/CD-driven application deployments

## Key Features
- Modular and reusable Terraform architecture
- Azure Key Vault integration for secure credential management
- Environment isolation using `.tfvars`
- Linux VM optimized for development workloads
- Clean separation between infrastructure and application layers

## Usage
1. Configure Azure authentication
2. Navigate to the desired environment under `env/`
3. Run:
   ```bash
   terraform init
   terraform plan
   terraform apply
