# TIPOS DE KERNEL

## 1. Núcleos Monolíticos     
Estos sistemas tienen un núcleo grande y complejo, que
engloba todos los servicios del sistema. Está programado de 
forma no modular, y tiene un rendimiento mayor que un 
micronúcleo. Sin embargo, cualquier cambio a realizar en 
cualquier servicio requiere la recompilación del núcleo y el 
reinicio del sistema para aplicar los nuevos cambios.

Un sistema operativo con núcleo monolítico concentra todas 
las funcionalidades posibles (planificación, sistema de 
archivos, redes, controladores de dispositivos, gestión de 
memoria, etc) dentro de un gran programa. El mismo puede 
tener un tamaño considerable, y deberá ser recompilado por 
completo al añadir una nueva funcionalidad.

Un error en una rutina puede propagarse a todo el núcleo. 

<image src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Kernel-monolithic.svg/1200px-Kernel-monolithic.svg.png" alt="Núcleo monolítico">

## 2. Micro-núcleos
Son núcleos de pequeño tamaño que fueron compilados sólo con 
las necesidades más básicas del sistema operativo. El resto 
de funcionalidades son añadidas mediante la adición de 
módulos externos al núcleo, lo que les proporciona 
flexibilidad y facilidad de ampliación. Son mas seguros que 
los Monolíticos.

**Pros del Micronucleo**
- Portabilidad
- Pequeña huella de la memoria
- Seguridad

**Contras del Micronúcleo**
- El hardware es más abstracto a través de controladores
- Hardware puede reaccionar más lento porque los controladores están en modo usuario
- Los procesos tienen que esperar en una cola para obtener información
- Los Procesos no pueden tener acceso a otros procesos sin tener que esperar

<image src="https://qph.cf2.quoracdn.net/main-qimg-266d165bcbd8e399ff8cd60ec4d8e0b3" alt="Micro-núcleo">

## 3. Núcleos Híbridos
Núcleo híbrido es una arquitectura basada en la combinación 
de microkernel y núcleo monolítico, estas arquitecturas son 
utilizadas dentro de las computadoras por medio de los 
sistemas operativos.

Una característica especial con que cuenta el núcleo híbrido 
es que incluyen código extra con el objetivo de mejorar el 
rendimiento.

A diferencia de los núcleos monolíticos tradicionales, los 
controladores de dispositivos y las extensiones al sistema 
operativo se pueden cargar y descargar fácilmente como 
módulos, mientras el sistema continúa funcionando sin 
interrupciones. También, a diferencia de los núcleos 
monolíticos tradicionales, los controladores pueden ser 
prevolcados (detenidos momentáneamente por actividades más 
importantes) bajo ciertas condiciones. Esta habilidad fue 
agregada para gestionar correctamente interrupciones de 
hardware, y para mejorar el soporte de Multiprocesamiento Simétrico.

La Mayoría de los Sistemas Operativos modernos contienen un Núcleo Híbrido.

<image src="https://e7.pngegg.com/pngimages/109/320/png-clipart-monolithic-kernel-hybrid-kernel-operating-systems-microkernel-linux-angle-text.png" alt="Núcleo híbrido">

## 4. Exonúcleos
Los exonúcleos, también conocidos como sistemas operativos 
verticalmente estructurados, representan una aproximación 
radicalmente nueva al diseño de sistemas operativos. La idea 
subyacente es permitir que el desarrollador tome todas las 
decisiones relativas al rendimiento del hardware. Los 
exonúcleos son extremadamente pequeños, ya que limitan 
expresamente su funcionalidad a la protección y el 
multiplexado de los recursos. Se llaman así porque toda la 
funcionalidad deja de estar residente en memoria y pasa a 
estar fuera, en librerías dinámicas.

<image src="https://w7.pngwing.com/pngs/996/157/png-transparent-exokernel-operating-systems-microkernel-system-call-computer-text-computer-material-thumbnail.png" alt="Exonúcleo">