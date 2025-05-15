#!/bin/bash

# List of security group IDs to delete
security_group_ids=(
  "sg-1234567"
  "sg-8901234"
  ...
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
