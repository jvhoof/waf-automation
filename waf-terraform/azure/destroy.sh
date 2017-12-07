#!/bin/bash
cat << "EOF"
##############################################################################################################
#  ____                                      _       
# | __ )  __ _ _ __ _ __ __ _  ___ _   _  __| | __ _ 
# |  _ \ / _` | `__| `__/ _` |/ __| | | |/ _` |/ _` |
# | |_) | (_| | |  | | | (_| | (__| |_| | (_| | (_| |
# |____/ \__,_|_|  |_|  \__,_|\___|\__,_|\__,_|\__,_|
#                                                    
# Deployment of a Barracuda Web Application Firewall setup in Microsoft Azure using Terraform
#
##############################################################################################################
EOF

# Stop running when command returns error
set -e

SECRET="~/secrets.tfvars"
STATE="state/terraform.tfstate"

echo "==> Terraform destroy"
echo ""
terraform destroy --state="$STATE" -var-file="$SECRET" 
