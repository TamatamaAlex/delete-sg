# delete-sg.sh

A simple shell script to delete AWS security groups.
You could also change the script to delete them all parallel to each other instead of waiting for each one. Just be careful when a delete errors.

## Usage

```sh
bash delete-sg.sh
```

Replace the ID's in the script with the security group ID's you want to delete.

## Requirements

- AWS CLI configured
