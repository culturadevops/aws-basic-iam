#!/bin/bash

# Permiso: Permite a los usuarios leer y escribir objetos específicos en un bucket de S3, pero no eliminarlos
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Resource": "arn:aws:s3:::YOUR_BUCKET_NAME/YOUR_PREFIX/*"
    },
    {
      "Effect": "Deny",
      "Action": [
        "s3:DeleteObject"
      ],
      "Resource": "arn:aws:s3:::YOUR_BUCKET_NAME/YOUR_PREFIX/*"
    }
  ]
}' > S3ReadWriteAccess.json

# Permiso: Permite a los usuarios iniciar y detener instancias de EC2 en una región específica, pero no crear ni eliminar instancias
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ec2:StartInstances",
        "ec2:StopInstances"
      ],
      "Resource": "arn:aws:ec2:YOUR_REGION:YOUR_ACCOUNT_ID:instance/*"
    },
    {
      "Effect": "Deny",
      "Action": [
        "ec2:RunInstances",
        "ec2:TerminateInstances"
      ],
      "Resource": "arn:aws:ec2:YOUR_REGION:YOUR_ACCOUNT_ID:instance/*"
    }
  ]
}' > EC2StartStopAccess.json

# Permiso: Permite a los usuarios acceder a un bucket de S3 para cargar y descargar objetos, pero solo dentro de un subdirectorio específico
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Resource": "arn:aws:s3:::YOUR_BUCKET_NAME/YOUR_SUBDIRECTORY/*"
    }
  ]
}' > S3SubdirectoryAccess.json

# Permiso: Permite a los usuarios acceder a una tabla de DynamoDB para realizar operaciones de lectura, escritura y eliminación, pero solo en un conjunto específico de atributos
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "dynamodb:GetItem",
        "dynamodb:PutItem",
        "dynamodb:DeleteItem"
      ],
      "Resource": "arn:aws:dynamodb:YOUR_REGION:YOUR_ACCOUNT_ID:table/YOUR_TABLE_NAME",
      "Condition": {
        "ForAllValues:StringEquals": {
          "dynamodb:Attributes": [
            "attribute1",
            "attribute2"
          ]
        }
      }
    }
  ]
}' > DynamoDBAttributeAccess.json

# Permiso: Permite a los usuarios enviar mensajes a una cola de Amazon SQS, pero no eliminar mensajes ni realizar otras operaciones
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "sqs:SendMessage"
      ],
      "Resource": "arn:aws:sqs:YOUR_REGION:YOUR_ACCOUNT_ID:YOUR_QUEUE_NAME"
    },
    {
      "Effect": "Deny",
      "Action": [
        "sqs:DeleteMessage",
        "sqs:ChangeMessageVisibility",
        "sqs:PurgeQueue"
      ],
      "Resource": "arn:aws:sqs:YOUR_REGION:YOUR_ACCOUNT_ID:YOUR_QUEUE_NAME"
    }
  ]
}' > SQSSendMessageAccess.json

# Permiso: Permite a los usuarios acceder a una función de AWS Lambda para invocarla, pero no modificar ni eliminar la función
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Resource": "arn:aws:lambda:YOUR_REGION:YOUR_ACCOUNT_ID:function:YOUR_FUNCTION_NAME"
    },
    {
      "Effect": "Deny",
      "Action": [
        "lambda:UpdateFunctionCode",
        "lambda:DeleteFunction"
      ],
      "Resource": "arn:aws:lambda:YOUR_REGION:YOUR_ACCOUNT_ID:function:YOUR_FUNCTION_NAME"
    }
  ]
}' > LambdaInvokeAccess.json

# Permiso: Permite a los usuarios ver información de costos y facturación en la consola de AWS, pero no realizar cambios ni acceder a otros servicios
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "aws-portal:ViewBilling",
        "aws-portal:ViewUsage"
      ],
      "Resource": "*"
    },
    {
      "Effect": "Deny",
      "Action": [
        "*"
      ],
      "Resource": "*"
    }
  ]
}' > BillingViewAccess.json

# Permiso: Permite a los usuarios acceder a recursos de Amazon RDS para realizar copias de seguridad y restauraciones, pero no modificar la configuración de la instancia
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "rds:CreateDBSnapshot",
        "rds:RestoreDBInstanceFromDBSnapshot"
      ],
      "Resource": "arn:aws:rds:YOUR_REGION:YOUR_ACCOUNT_ID:db:YOUR_DB_INSTANCE_NAME"
    },
    {
      "Effect": "Deny",
      "Action": [
        "rds:ModifyDBInstance"
      ],
      "Resource": "arn:aws:rds:YOUR_REGION:YOUR_ACCOUNT_ID:db:YOUR_DB_INSTANCE_NAME"
    }
  ]
}' > RDSBackupRestoreAccess.json

# Permiso: Permite a los usuarios acceder a servicios de AWS mediante conexiones VPN o Direct Connect, pero no a través de Internet
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ec2:CreateVpnConnection",
        "ec2:CreateDirectConnectGatewayAssociation"
      ],
      "Resource": "*"
    },
    {
      "Effect": "Deny",
      "Action": [
        "ec2:CreateInternetGateway",
        "ec2:AssociateRouteTable"
      ],
      "Resource": "*"
    }
  ]
}' > VPNDirectConnectAccess.json

# Permiso: Permite a los usuarios crear y administrar grupos de usuarios en IAM, pero no modificar o eliminar usuarios individuales
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "iam:CreateGroup",
        "iam:DeleteGroup",
        "iam:GetGroup",
        "iam:ListGroups",
        "iam:AddUserToGroup",
        "iam:RemoveUserFromGroup"
      ],
      "Resource": "*"
    },
    {
      "Effect": "Deny",
      "Action": [
        "iam:CreateUser",
        "iam:DeleteUser",
        "iam:GetUser",
        "iam:ListUsers"
      ],
      "Resource": "*"
    }
  ]
}' > IAMGroupManagementAccess.json

echo "Archivos de permisos generados exitosamente."
