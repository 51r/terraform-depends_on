# Terraform depends_on argument

This repo contains a Terraform sample configuration which shows a use case of depends_on argument.

It contains resource `random_integer` which generates integer between 1 and 3 and it's used in `random_pet` module to generate random pet name. The module `random_pet` depends on `random_integer`. This means that Terraform will first execute `random_integer`, create the resource and then will continue with `random_pet` to generate the pet names.

# Purpose of depends_on

The meta-argument changes the default behavior of Terraform plan executions. If you run your Terraform configuration without `depends_on` argument, it will run all the blocks simultaneously, while if you have set depends_on, it will execute first the module/resource clarified in the argument field (in my case random_integer), and then continue with the rest of the plan.

The sample in the repo uses **random** providers. 

# Prerequisite
You need to have [Terraform CLI >0.13](https://learn.hashicorp.com/tutorials/terraform/install-cli) installed on you workstation. 

# How to use the repo

* Clone this repo locally to a folder of your choice
```
git clone https://github.com/51r/tf-depends_on.git
```

* Make sure you are in the main directory of the repo:
```
cd tf-depends_on
```

* initialize Terraform  
```
terraform init
```

* Check the plan in order to see the changes which terraform is going to made.
```
terraform plan
```

* Apply the plan which terraform is going to execute based on our configuration (main.tf)
```
terraform apply
```
