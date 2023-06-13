#!/bin/bash

# Permiso: AmazonS3ReadOnlyAccess.json
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:Get*",
        "s3:List*"
      ],
      "Resource": "*"
    }
  ]
}' > AmazonS3ReadOnlyAccess.json

# Permiso: AmazonEC2ReadOnlyAccess.json
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ec2:Describe*",
        "ec2:List*"
      ],
      "Resource": "*"
    }
  ]
}' > AmazonEC2ReadOnlyAccess.json

# Permiso: AmazonRDSReadOnlyAccess.json
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "rds:Describe*",
        "rds:List*"
      ],
      "Resource": "*"
    }
  ]
}' > AmazonRDSReadOnlyAccess.json

# Permiso: AmazonEC2ContainerRegistryReadOnly.json
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ecr:Get*",
        "ecr:List*"
      ],
      "Resource": "*"
    }
  ]
}' > AmazonEC2ContainerRegistryReadOnly.json

# Permiso: AWSLambdaRole.json
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "lambda:*",
      "Resource": "*"
    }
  ]
}' > AWSLambdaRole.json


echo "Archivos de permisos creados con éxito."
