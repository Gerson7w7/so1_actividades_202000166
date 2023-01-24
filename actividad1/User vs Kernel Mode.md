# USER VS KERNEL MODE

## MODO USUARIO
Cuando un programa se inicia en un sistema operativo, digamos 
ventanas, luego inicia el programa en modo de usuario. Y 
cuando un programa en modo de usuario solicita ejecutarse, 
Windows crea un espacio de direcciones virtual y de proceso 
(para ese proceso). Modo de usuario los programas son menos 
privilegiados que las aplicaciones en modo de usuario y no se 
les permite acceder directamente a los recursos del sistema. 
Por ejemplo, si una aplicación bajo modo de usuario desea 
acceder a los recursos del sistema, primero tendrá que pasar 
por el núcleo del sistema operativo mediante el uso de 
syscalls.  

## MODO KERNEL 
El núcleo es el programa central en el que se basan todos los 
demás componentes del sistema operativo, se utiliza para 
acceder a los componentes de hardware y programar qué 
procesos deben ejecutarse en un sistema informático y cuándo, 
y también gestiona la interacción software y hardware de la 
aplicación. Por lo tanto, es el programa más privilegiado, a 
diferencia de otros programas, puede interactuar directamente 
con el hardware. Cuando los programas que se ejecutan en modo 
de usuario necesitan acceso de hardware, por ejemplo, cámara 
web, primero debe pasar por el núcleo utilizando una pantalla 
de sistema, y para llevar a cabo estas solicitudes, la CPU 
cambia del modo de usuario al modo de kernel en el momento de 
la ejecución. Después de completar finalmente la ejecución 
del proceso, el CPU vuelve a cambiar al modo de usuario.

<image src="https://i0.wp.com/www.differencebetween.com/wp-content/uploads/2017/12/Difference-Between-User-Mode-and-Kernel-Mode-fig-1.png?resize=500%2C500&ssl=1" alt="Kernel vs User">

## Diferencia entre el modo Kernel y el modo de usuario
| CRITERIOS |KERNEL MODE | USER MODE |
|:-------------------:|---|---|
| Principales diferencias |En el modo kernel, el programa tiene acceso directo y sin restricciones a los recursos del sistema.|En modo de usuario, el programa de aplicación se ejecuta y se inicia.|
|Interrupciones|En el modo Kernel, todo el sistema operativo podría disminuir si se produce una interrupción.|En el modo de usuario, un solo proceso falla si ocurre una interrupción.|
|Modos|En el modo kernel, todos los procesos comparten un solo espacio de dirección virtual.|En el modo de usuario, todos los procesos obtienen espacio de dirección virtual separado.|
|Nivel de privilegio|En el modo kernel, las aplicaciones tienen más privilegios en comparación con el modo de usuario.|Mientras que en el modo de usuario, las aplicaciones tienen menos privilegios.|
|Restricciones|Como el modo kernel puede acceder tanto a los programas de usuario como a los programas de kernel, no hay restricciones.|Si bien el modo de usuario necesita acceder a los programas del kernel ya que no puede acceder directamente a ellos.|
|Valor de bit de modo|El bit de modo del kernel mode es 0.|Mientras el bit de modo de usuario es 1.|
|Referencias de memoria|Es capaz de hacer referencia a ambas áreas de memoria.|Solo puede hacer referencias a la memoria asignada para el modo de usuario.|
|Choque del sistema|Un bloqueo del sistema en modo kernel es severo y hace las cosas más complicadas.|En el modo de usuario, se puede recuperar un bloqueo del sistema simplemente reanudando la sesión.|
|Funcionalidad|El modo kernel puede referirse a cualquier bloque de memoria en el sistema y también puede dirigir la CPU para la ejecución de una instrucción, lo que lo convierte en un modo muy potente y significativo.|El modo de usuario es un modo de visualización estándar y típico, lo que implica que la información no se puede ejecutar por sí sola o hacer referencia a ningún bloque de memoria. Necesita una interfaz de protocolo de aplicación (API) para lograr estas cosas.|
