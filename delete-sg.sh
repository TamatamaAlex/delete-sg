#!/bin/bash

# List of security group IDs to delete
security_group_ids=(
  "sg-0d40489e0d4045c24"
  "sg-0cb72a2901af4fd7f"
  "sg-01aa6460e5141b354"
  "sg-01e3508865c62fc02"
  "sg-0acb3c1d9efab6ce0"
  "sg-02154250c62809aee"
  "sg-050814504e7c1b981"
  "sg-000093b7d07f90d91"
  "sg-0afeabf903973459a"
  "sg-08a41ce74523edb91"
  "sg-0e1e73438b637a717"
  "sg-032817df3202999c0"
  "sg-0f0e1886d884b3767"
  "sg-0ef4fcd435808f53a"
  "sg-093d142f7ee3b94c8"
  "sg-0e1762445c0ca0b2b"
  "sg-551b0a30"
  "sg-0b96c467b6b995e0a"
  "sg-0bff024f8fde20fc3"
  "sg-05c1a304d37000f81"
  "sg-06634d5c057cc344a"
  "sg-0cf8fde52e804982d"
  "sg-0e5fc17fabe12639a"
  "sg-0dba089b593960e54"
  "sg-0e5f42ab94b967325"
  "sg-0a9906160f042dc67"
  "sg-0e5ce0aebe65c36ac"
  "sg-0570661aa683133cf"
  "sg-08db5de1ad0e7b539"
  "sg-0442a71170f2a5e8a"
  "sg-0ee21c2e4759ba6ee"
  "sg-0dd3b7c4f504a33ff"
  "sg-0dc3dc0cfea519673"
)

# Iterate through each security group ID and attempt to delete it
for sg_id in "${security_group_ids[@]}"; do
  echo "Attempting to delete security group: $sg_id"
  aws ec2 delete-security-group --group-id "$sg_id"
  if [ $? -eq 0 ]; then
    echo "Successfully deleted security group: $sg_id"
  else
    echo "Failed to delete security group: $sg_id"
  fi
done

echo "All security group deletion attempts completed."
