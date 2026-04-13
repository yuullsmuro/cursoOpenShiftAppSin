Proyecto adaptado para desplegarse en OpenShift Local directamente desde una URL Git.

Cambios realizados:
<<<<<<< HEAD
- Salida del servlet cambiada a: Salida GET con WebHook 2.
=======
>>>>>>> c60038ecc6985c1791694d233471c8610bd2145c
- pom.xml actualizado para compilar con Java 8+ (evita el error source/target 1.5).
- Dockerfile multi-stage que compila con Maven dentro del build de OpenShift.
- Despliegue en WildFly 26.1.3.Final con JDK 17.
- El WAR se copia como ROOT.war, por lo que la URL esperada es /aplicacion.

Flujo sugerido en OpenShift Local:
<<<<<<< HEAD
1) Sube el contenido de este proyecto a un repositorio GitHub.
2) Crea o usa el proyecto canario:
   oc new-project canario
   oc project canario
3) Despliega desde la rama deseada:
   oc new-app https://github.com/TU_USUARIO/TU_REPO.git --name=appestable
   o si es rama develop:
   oc new-app https://github.com/TU_USUARIO/TU_REPO.git#develop --name=appestable
4) Expón el servicio:
   oc expose svc/appestable
5) Ve la route:
   oc get route
6) Prueba la app:
=======
1) Subir el contenido de este proyecto a un repositorio GitHub.
2) Crear o usar el proyecto canario:
   oc new-project canario
   oc project canario
3) Desplegar desde la rama deseada:
   oc new-app https://github.com/TU_USUARIO/TU_REPO.git --name=appestable
   o si es rama develop:
   oc new-app https://github.com/TU_USUARIO/TU_REPO.git#develop --name=appestable
4) Exponer el servicio:
   oc expose svc/appestable
5) Ver la route:
   oc get route
6) Probar la app:
>>>>>>> c60038ecc6985c1791694d233471c8610bd2145c
   http://<route>/aplicacion

Comandos útiles:
- oc get all
- oc get builds
- oc logs -f bc/appestable
- oc get pods
