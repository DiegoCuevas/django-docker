# django-docker

Es una aplicación multicontainer que contiene los servicios: 
 - Un servidor Django que corre expuesto en el puerto 8000 
 - Una base de datos Postgis que corre expuesto en el puerto 5432
 
Permite el manejo típico de cuentas de django (login, logout, register) y el sistema admin de django.
si el usuario esta logueado lo redirige a esta ruta ``http://localhost:8000/users/`` que muestra el texto: 
“Bienvenido ``username``”  y si no esta logueado lo manda a ``http://localhost:8000/users/login``

Si el usuario no tiene un cuenta puede registrarse en la siguiente ruta ``http://localhost:8000/users/register``
