
# Enterprise Patch Management & Compliance Automation

## Overview

Enterprise Patch Management & Compliance Automation is an end-to-end DevOps project that automates infrastructure provisioning, patch management, compliance validation, reporting, and CI/CD validation using Terraform, Ansible, AWS, and GitHub Actions.

The project simulates a real-world enterprise environment consisting of multiple Red Hat Enterprise Linux (RHEL) servers across Dev, Test, and Production environments.

---

## Architecture

```text
GitHub
   │
   ▼
GitHub Actions
   │
   ├── Terraform CI
   └── Ansible CI

   ▼

Terraform
   │
   ├── VPC
   ├── Subnets
   ├── Security Groups
   ├── EC2 Instances
   └── Ansible Inventory Generation

   ▼

Ansible Controller
   │
   ├── Common Role
   ├── Patching Role
   ├── Compliance Role
   └── Reporting Role

   ▼

RHEL EC2 Fleet

   ├── Dev
   ├── Test
   └── Production
```

---

## Features

### Infrastructure Automation

* AWS VPC provisioning using Terraform
* Public subnet deployment
* Security Group management
* Automated EC2 provisioning
* RHEL 9 instance deployment
* Terraform-generated Ansible inventory

### Configuration Management

* Ansible Controller setup
* Centralized inventory management
* Common baseline configuration
* Package management automation

### Patch Management

* Automated package updates
* Fleet-wide patch execution
* Environment-based targeting
* Idempotent playbook execution

### Compliance Automation

Collection of:

* Kernel version
* System uptime
* Memory utilization
* Disk utilization
* Service status

Compliance status evaluation:

* Compliant
* Warning
* Critical

### Reporting

* Host-level compliance reports
* HTML report generation
* Enterprise dashboard generation
* Centralized reporting

### CI/CD

GitHub Actions pipelines for:

* Terraform format validation
* Terraform syntax validation
* Ansible playbook validation
* Infrastructure as Code quality checks

---

## Technology Stack

| Category                 | Technology                    |
| ------------------------ | ----------------------------- |
| Cloud                    | AWS                           |
| Operating System         | RHEL 9                        |
| Infrastructure as Code   | Terraform                     |
| Configuration Management | Ansible                       |
| CI/CD                    | GitHub Actions                |
| Version Control          | Git                           |
| Reporting                | HTML + Jinja2                 |
| Networking               | VPC, Subnets, Security Groups |

---

## Project Structure

```text
Enterprise-patch-management/

├── terraform/
│   ├── provider.tf
│   ├── networking.tf
│   ├── security.tf
│   ├── ec2.tf
│   ├── inventory.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── inventory.tpl
│
├── ansible/
│   ├── ansible.cfg
│   │
│   ├── inventories/
│   │   └── hosts.ini
│   │
│   ├── playbooks/
│   │   ├── common.yml
│   │   ├── patch.yml
│   │   ├── compliance.yml
│   │   ├── reporting.yml
│   │   └── validate.yml
│   │
│   └── roles/
│       ├── common/
│       ├── patching/
│       ├── compliance/
│       └── reporting/
│
└── .github/
    └── workflows/
        ├── terraform.yml
        └── ansible.yml
```

---

## CI/CD Pipeline

### Terraform CI

```text
Push
 │
 ▼
Terraform Init
 │
 ▼
Terraform Format Check
 │
 ▼
Terraform Validate
 │
 ▼
Success
```

### Ansible CI

```text
Push
 │
 ▼
Install Ansible
 │
 ▼
Playbook Syntax Validation
 │
 ▼
Success
```

---

## Workflow

### Infrastructure Deployment

```bash
cd terraform

terraform init
terraform plan
terraform apply
```

### Validate Connectivity

```bash
ansible all -m ping
```

### Run Common Configuration

```bash
ansible-playbook playbooks/common.yml
```

### Run Patching

```bash
ansible-playbook playbooks/patch.yml
```

### Run Compliance Checks

```bash
ansible-playbook playbooks/compliance.yml
```

### Generate Reports

```bash
ansible-playbook playbooks/reporting.yml
```

---

## Sample Deliverables

* Automated infrastructure provisioning
* Automated patch deployment
* Compliance reporting
* HTML dashboard
* CI/CD validation pipelines

---

## Future Enhancements

* Dynamic AWS Inventory
* Ansible Lint Integration
* Slack Notifications
* Self-Hosted GitHub Runner
* Automated Patch Scheduling
* Email Reporting
* Multi-Region Deployment
* AWS Systems Manager Integration

---

## Learning Outcomes

This project demonstrates practical experience in:

* Terraform
* Ansible
* AWS EC2
* Linux Administration
* Infrastructure as Code
* Configuration Management
* CI/CD
* GitHub Actions
* Compliance Automation
* Enterprise Patch Management

---

## Author

Aisac Jose

Enterprise Patch Management & Compliance Automation Project
