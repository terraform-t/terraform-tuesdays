terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">=0.1.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"

    }

    azuread = {
      source = "hashicorp/azuread"
      version = "~> 1.0"
    }

  }
  backend "remote" {
    organization = "my-ned-in-the-cloud"
    # token = "CVUuhNzSfBUQNA.atlasv1.sIR3nbqSA2gHXyahn7If7KFPlAQ5Vma41ecF8QZ5yrDK5o95fJAYlyhGwTVvFHyavz8"
    # token = "TZzNlUFsS0cpJA.atlasv1.sn7qK2hagJuKjWzISLQneg2zPVz0qFaq62zBBUJ8IHzKF27wjpEUcShFcdWUxKCLxzU"
    # terraform-tuesdays-token
    # TZzNlUFsS0cpJA.atlasv1.sn7qK2hagJuKjWzISLQneg2zPVz0qFaq62zBBUJ8IHzKF27wjpEUcShFcdWUxKCLxzU

    workspaces {
      name = "terraform-tuesdays"
    }
  }
}