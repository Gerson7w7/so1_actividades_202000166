# CREACIÓN DE UN SYSTEMD UNIT 
## Pasos para crear un sYstemd y ejecutarlo 
1. Encontramos los servicios Linux en ejecución en la siguiente ruta: `/etc/systemd/system`, así nos posicionamos en este directorio para guardar nuestro nuevo servicio.

2. Creamos nuestro servicio con el nombre de actividad4.service.

3. Vamos a comprender un poco más cómo está compuesto un systemd de tipo unit: 

    Una unidad de servicio es un archivo con el extensión `.service` que contiene información sobre un proceso administrado por systemd. Está compuesto por tres secciones principales:

    * [Unit]: esta sección contiene información no relacionada específicamente con el tipo de unidad, como la descripción del servicio.
    * [Service]: contiene información sobre el tipo específico de la unidad, un servicio en este caso.
    * [Install]: esta sección contiene información sobre la instalación de la unidad.

4. Después de terminar, volvemos a cargar los archivos de servicio para incluir el nuevo servicio con el siguiente comando:
    * `sudo systemctl daemon-reload`

5. Iniciamos el nuevo servicio que creamos:
    * `sudo systemctl start actividad4.service`

6. Verificamos el estado del nuevo servicio, en este caso `actividad4.service`:
    * `sudo systemctl status actividad4.service`

7. Habilitamos el servicio en cada reinicio de nuestro SO:
    * `sudo systemctl enable actividad4.service`

8. Si queremos deshabilitar el servicio en cada reinicio ponemos lo siguiente:
    * `sudo systemctl disable actividad4.service`