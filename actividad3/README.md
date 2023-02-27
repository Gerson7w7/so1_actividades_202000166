# SOLUCION BUG NGINX CON RACT
Normalmente las rutas en una aplicación con React son configuradas utilizando react-router, la cual se encargará de resolver las distintas URLs.

Si desplegamos la aplicación en un servidor nginx y comenzamos a navegar a través de las distintas secciones no hay ningún problema.

El problema surge, como lo pudimos observar, cuando recargamos la página o vamos directamente a la url desde el navegador lo más probable es que nos salga un error HTTP 404, por ejemplo cuando estamos en la url: `localhost:3000/login`, que nos mostro el ingeniero.

Este error sucede porque al momento de hacer refresh, el encargado de resolver esa ruta es nginx y no react-router. En cambio, si ingresamos al home de la aplicación, nginx resuelve bien y desde ahí cuando navegamos la resolución es hecha por react-router.

Para desplegar una web desarollada en React necesita de un pequeño cambio en la configuración de nginx para evitar un error HTTP 404.

Para resolver esto, hay que agregar lo siguiente a la configuración de nginx: 

```
location / {
    root /usr/share/nginx/html; // Carpeta en donde está la web
    try_files $uri /index.html;
}
```

root es una directiva de nginx la cual sirve para definir el directorio para resolver las llamadas.

```
try_files file ... uri;
```

`try_files` es otra directiva de nginx la cual verifica la existencia de uno o más archivos y si no lo encuentra, nginx hace una redirección interna a uri. En nuestro caso, el web server trata de resolver `$uri` (variable interna de nginx que representa la URL) y en caso de no encontrarla, redirige a `/index.html.`

Así nginx delegará la resolución de las URIs a react-router, en caso de que este no pueda resolverlas. :D

NOTA: La solución la agregué al nginx.Dockerfile del frontend.