# gcp-tf-github-actions

This repository contains GitHub Actions workflows and Terraform configurations for managing resources on Google Cloud Platform (GCP).

## Pre-requisites:

To set up this repository for managing GCP resources with Terraform, ensure you have the following prerequisites:

GitHub Account: You need a GitHub account to use GitHub Actions.
Terraform Cloud Account: Obtain a Terraform Cloud account and generate a user API token.
Google Cloud Account: Have access to a Google Cloud Platform (GCP) project and create a service account with appropriate permissions.
Local Development Environment: Install Git on your local machine for version control.

## Workflows

### Terraform Workflow

The `.github/workflows/terraform.yml` file defines a GitHub Actions workflow for managing infrastructure using Terraform. This workflow is triggered on pushes to the `main` branch and pull requests.

#### Permissions

The workflow has permissions to read the repository contents.

#### Jobs

##### Terraform Job

- **Name:** Terraform
- **Runs on:** Ubuntu latest

###### Steps:

1. **Checkout:** Checks out the repository to the GitHub Actions runner.
2. **Setup Terraform:** Installs the latest version of Terraform CLI and configures the Terraform CLI configuration file with a Terraform Cloud user API token.
3. **Terraform Init:** Initializes a new or existing Terraform working directory.
4. **Terraform Format:** Checks that all Terraform configuration files adhere to a canonical format.
5. **Terraform Plan:** Generates an execution plan for Terraform.
6. **Terraform Apply:** Applies changes to the infrastructure according to Terraform configuration files.

## Terraform Configuration

### `main.tf`

This file contains Terraform configurations for creating a Google Cloud Storage bucket.

## Usage

To use this repository for managing resources on Google Cloud Platform (GCP) using Terraform, follow these steps:

1. **Clone Repository:** Clone this repository to your local machine.
git clone https://github.com/Vishalthokade/gcp-tf-github-actions.git

2. **Configure Secrets:** Set up the required secrets in your GitHub repository settings:
TF_API_TOKEN: Terraform Cloud user API token.
GCP_SA_KEY: Google Cloud service account key with appropriate permissions.

3. **Update Terraform Configurations:** Modify the main.tf file in the repository to define your desired infrastructure resources on GCP.

4. **Changes:** Commit and push your changes to the main branch of the repository.
git add .
git commit -m "Update Terraform configurations"
git push origin main

5. **View Workflow Execution:** Visit the "Actions" tab of your GitHub repository to monitor the execution of the Terraform workflow.
