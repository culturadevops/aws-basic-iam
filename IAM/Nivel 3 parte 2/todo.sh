#!/bin/bash

# Permiso: Permite a los usuarios acceder a un bucket de S3 y todos sus objetos para realizar operaciones de lectura y escritura.
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Resource": "arn:aws:s3:::YOUR_BUCKET_NAME/*"
    }
  ]
}' > S3FullAccess.json

# Permiso: Permite a los usuarios acceder a una función de AWS Lambda para invocarla y ver los registros.
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "lambda:InvokeFunction",
        "logs:CreateLogStream",
        "logs:GetLogEvents",
        "logs:FilterLogEvents"
      ],
      "Resource": "arn:aws:lambda:YOUR_REGION:YOUR_ACCOUNT_ID:function:YOUR_FUNCTION_NAME"
    }
  ]
}' > LambdaAccess.json

# Permiso: Permite a los usuarios acceder a una cola de Amazon SQS para enviar y recibir mensajes.
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "sqs:SendMessage",
        "sqs:ReceiveMessage",
        "sqs:DeleteMessage"
      ],
      "Resource": "arn:aws:sqs:YOUR_REGION:YOUR_ACCOUNT_ID:YOUR_QUEUE_NAME"
    }
  ]
}' > SQSAccess.json

# Permiso: Permite a los usuarios acceder a un tema de Amazon SNS para publicar mensajes.
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "sns:Publish"
      ],
      "Resource": "arn:aws:sns:YOUR_REGION:YOUR_ACCOUNT_ID:YOUR_TOPIC_NAME"
    }
  ]
}' > SNSAccess.json

# Permiso: Permite a los usuarios acceder a un repositorio de código en AWS CodeCommit para clonarlo, hacer cambios y enviar confirmaciones.
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "codecommit:GitPull",
        "codecommit:GitPush"
      ],
      "Resource": "arn:aws:codecommit:YOUR_REGION:YOUR_ACCOUNT_ID:YOUR_REPOSITORY_NAME"
    }
  ]
}' > CodeCommitAccess.json

# Permiso: Permite a los usuarios acceder a un bucket de Amazon S3 para listar, leer y descargar objetos.
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket",
        "s3:GetObject"
      ],
      "Resource": [
        "arn:aws:s3:::YOUR_BUCKET_NAME",
        "arn:aws:s3:::YOUR_BUCKET_NAME/*"
      ]
    }
  ]
}' > S3ListReadAccess.json

# Permiso: Permite a los usuarios acceder a una tabla de Amazon DynamoDB para realizar operaciones de lectura y escritura.
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "dynamodb:GetItem",
        "dynamodb:PutItem"
      ],
      "Resource": "arn:aws:dynamodb:YOUR_REGION:YOUR_ACCOUNT_ID:table/YOUR_TABLE_NAME"
    }
  ]
}' > DynamoDBAccess.json

# Permiso: Permite a los usuarios acceder a un servicio de Amazon Redshift para ejecutar consultas y ver los resultados.
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "redshift:ExecuteQuery",
        "redshift:DescribeClusters"
      ],
      "Resource": "*"
    }
  ]
}' > RedshiftAccess.json

# Permiso: Permite a los usuarios acceder a un bucket de Amazon S3 para cargar objetos en una ubicación específica.
echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:PutObject"
      ],
      "Resource": "arn:aws:s3:::YOUR_BUCKET_NAME/YOUR_PREFIX/YOUR_SUBDIRECTORY/*"
    }
  ]
}' > S3UploadAccess.json

# Permiso: Permite a los usuarios acceder a una función de AWS Lambda para invocarla y leer los eventos de CloudWatch Logs.

echo '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "lambda:InvokeFunction",
        "logs:GetLogEvents"
      ],
      "Resource": "arn:aws:lambda:YOUR_REGION:YOUR_ACCOUNT_ID:function:YOUR_FUNCTION_NAME"
    }
  ]
}' >> LambdaInvokeLogsAccess.json

echo "Archivos de permisos generados exitosamente."
