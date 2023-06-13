Crear la política:

bash

aws iam create-policy --policy-name S3FullAccess --policy-document file://S3FullAccess.json

Este comando creará una política llamada "S3FullAccess" utilizando el archivo JSON "S3FullAccess.json". Asegúrate de tener el archivo JSON con los permisos correctos en tu directorio actual.

Crear el rol:

bash

aws iam create-role --role-name MyRole --assume-role-policy-document file://TrustPolicy.json

Este comando creará un rol llamado "MyRole". Asegúrate de reemplazar "TrustPolicy.json" con el nombre del archivo JSON que contiene la política de confianza para el rol. El contenido del archivo "TrustPolicy.json" debe especificar qué entidades tienen permiso para asumir el rol.

Asociar la política al rol:

bash

aws iam attach-role-policy --role-name MyRole --policy-arn arn:aws:iam::YOUR_ACCOUNT_ID:policy/S3FullAccess

Este comando asociará la política "S3FullAccess" al rol "MyRole". Asegúrate de reemplazar "YOUR_ACCOUNT_ID" con tu ID de cuenta de AWS.

Una vez completados estos pasos, la política estará asociada al rol y el rol estará listo para ser asignado a un usuario. Puedes utilizar el comando aws iam create-user para crear un usuario y luego utilizar el comando aws iam add-user-to-group para agregar el usuario a un grupo que tiene permisos asociados a través del rol.










https://docs.aws.amazon.com/es_es/IAM/latest/UserGuide/access_policies_examples.html



caso de uso que se puedo seguir para entender un poco como se podria separar los permisos para las organizaciones.
https://docs.aws.amazon.com/es_es/IAM/latest/UserGuide/IAM_UseCases.html#UseCase_EC2