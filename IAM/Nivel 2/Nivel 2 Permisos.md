    AmazonS3ReadOnlyAccess: Proporciona acceso de solo lectura a Amazon S3, lo que permite leer objetos y metadatos de buckets, pero no realizar modificaciones o eliminar objetos. Este permiso es útil para casos en los que solo necesitas leer datos de un bucket de S3.

    AmazonEC2ReadOnlyAccess: Proporciona acceso de solo lectura a Amazon EC2, lo que permite ver información sobre instancias, volúmenes y otros recursos de EC2, pero no permite realizar acciones de modificación o eliminación. Este permiso es útil cuando solo necesitas consultar información sobre las instancias de EC2 existentes.

    AmazonRDSReadOnlyAccess: Proporciona acceso de solo lectura a Amazon RDS, lo que permite ver información sobre instancias de bases de datos, parámetros de configuración y eventos de RDS, pero no permite realizar acciones de modificación o eliminación. Este permiso es útil cuando solo necesitas consultar información sobre las bases de datos de RDS existentes.

    AmazonEC2ContainerRegistryReadOnly: Proporciona acceso de solo lectura a Amazon Elastic Container Registry (ECR), lo que permite leer información sobre los registros de contenedores, como imágenes, repositorios y políticas de acceso. Este permiso es útil cuando solo necesitas ver información sobre los registros de contenedores, sin realizar cambios.

    AWSLambdaRole: Este es un caso de uso avanzado que implica la creación de un rol de IAM específico para las funciones de AWS Lambda. Este rol se puede asociar con funciones de Lambda para otorgarles permisos específicos. Por ejemplo, puedes asignar políticas que permitan leer y escribir en ciertos buckets de S3 o acceder a tablas específicas de DynamoDB.

