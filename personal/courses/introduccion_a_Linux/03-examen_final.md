# Examen Final

1. Si quiero asignar el permiso $123$ en octal a un fichero, ¿cómo quedarán representados los permisos finales para este fichero?

	- `.--x-w--wx`. pending

2. Si quiero asignar el permiso $676$ en octal a un directorio, ¿cómo quedarán representados los permisos finales para este directorio?

	- `drw-rwxrw-`.

3. ¿Qué conseguiremos con este comando?

	```BASH
    touch file.{summary,report,results}
    ```

	- Estaremos creando 3 archivos: "file.summary", "file.report" y "file.results".

4. ¿Qué representación en octal sería la equivalente a los siguientes permisos mostrados en el archivo?

	```BASH
    .rw-r--r-x
    ```

	- $645$.

5. En consola, ¿cómo podemos autocompletar?

	- Con la tecla `TAB`.

6. Empareja cada permiso con su representación octal correspondiente.

	| octal |  permisos |
	|:------:|:-----------:|
	| $421$ | `r---w---x` |
	| $167$ | `--xrw-rwx` |
	| $761$ | `rwxrw---x` |
	| $4400$ | `r-S------` |
	| $7400$ | `r-S--S--T` |
	| $6721$ | `rws-wS--x` |

7. ¿Con qué comando puedo cambiar el propietario de un archivo?

	- `chown`.

8. ¿Cómo hago para saber el tiempo que tarda en ejecutarse un comando?

	- `time`.

9. ¿Cuál sería la expresión a establecer para una tarea Cron que quiero que se ejecute al tercer minuto de cada hora?

	- `3 * * * *`.

10. ¿De qué formas podríamos filtrar por la tercera línea de un fichero?

	- `awk 'NR==3'`.

	- `head -n 3 | tail -n 1`.

11. ¿De qué manera podría rápidamente ejecutar el comando anteriormente indicado pero esta vez como el usuario "root"?

	```BASH
    touch file
    touch: cannot touch 'file': Permission denied
    ```

	- `sudo !!`.

12. ¿Cuál es la representación en octal del siguiente permiso?

	```BASH
    .-w-rwx--x
    ```

	- $271$.

13. ¿De qué forma puedo indicar que quiero ejecutar una tarea cron a las 02:10 AM, cada $2$ días de la semana?

	- `10 2 */2 * *`. Pending

	- `10 2 * * 1,3,5`.?

	- `10 2 * * 2,4,6`.?

14. ¿Qué significa `../`?

	- Representa el directorio padre del directorio de trabajo.

15. ¿Qué comando puedo utilizar para ver las variables de entorno de mi sesión?

	- `env`.

16. ¿Cómo podría declarar en una línea un array que reúna las siguientes especificaciones en un script de Bash?

	Declarar un array de 5 elementos (a, b, c, d y e) con el nombre de "elementos".

	- `declare -a elementos=(a b c d e)`.

17. ¿Cuál sería la expresión a establecer para una tarea Cron que quiero que se ejecute cada minuto, cada $2$ horas?

	- `* */2 * * *`.

18. ¿Con qué comando podemos matar un proceso?

	- `kill`.

19. ¿Qué pasará cuando ejecute el último comando?

	```BASH
    exec 3<> file
    exec 4>&3-
    abc 2>&3
    ```

	- La ejecución causará un error, dado que el descriptor de archivo indicado ha sido cerrado.

20. ¿Qué conseguimos con la operatoria `3>&1 1>&2 2>&3`?

	- Conseguimos intercambiar stderr con stdout y stdout con stderr.

21. ¿Cómo puedo indicar que quiero ejecutar una tarea Cron cada minuto, en el primer día del mes, solo para el mes de febrero y los días miércoles?

	- `* * 1 2 3`.

22. ¿Se almacenará así el stderr del comando indicado entre paréntesis en el archivo "file"?

	```BASH
    (whoam 3>&1 1>&2 2>&3) > file
    ```

	- Verdadero.

23. ¿En qué directorios se guardan generalmente los programas?

	- En `/bin`, `/sbin` y `/usr/sbin`, aunque depende también de la distribución.

24. ¿Con qué comando puedo saber en qué consola me encuentro?

	- `tty`.

25. ¿Qué se estará mostrando por consola una vez ejecutado el último comando?

	```BASH
    cat /etc/hosts

    ::1        localhost ip6-localhost ip6-loopback
    ff02::1    ip6-allnodes
    ff02::2    ip6-allrouters
    127.0.0.1  localhost

    cat /etc/hosts | awk 'NR==2' | awk 'NF{print $NF}'
    ```

	- `ip6-allnodes`.

26. Estoy perdido en el árbol de directorios, ¿cómo que comando puedo volver a mi "HOME"?

	- `cd ~`.

27. ¿Se almacenará así el stderr del comando indicado entre paréntesis en el archivo "file"?

	```BASH
    (whoam 3>&1 1>&2 2>&3) 2> file
    ```

	- Falso.

28. ¿Cómo puedo indicar en una misma línea que el stderr del último comando a ejecutar se introduzca en el archivo "file" y el stdout en el archivo "file_two"?

	```BASH
    exec 8<> file
    exec 7<> file_two
    whoam
    ```

	- `2>&8 1>&7`.

	- `1>&7 2>&8`.

29. ¿Cuál sería la expresión a establecer para una tarea Cron que quiero que se ejecute cada minuto, solo los sábados?

	- `* * * * 6`.

30. ¿Qué se va a almacenar en el archivo "file" tras ejecutar el comando indicado?

	```BASH
    (whoami 3>&1 2>&3) > file
    ```

	- El stdout del comando "whoami".

31. Si quiero asignar el permiso $432$ en octal a un directorio, ¿cómo quedará finalmente representado el permiso para dicho directorio?

	- `drw--wx-w-`.

32. ¿Cuál sería la expresión a establecer para una tarea Cron que quiero que se ejecute cada minuto, en el día $10$ del mes, cada $2$ meses?

	- `* * 10 */2 *`.

33. ¿Dónde se guardan los archivos de configuración del sistema?

	- `/etc`.

34. ¿Qué se mostrará por consola una vez ejecute el script?

	```BASH
    ls

    example.sh

    cat example.sh

    #!bin/bash

    echo $0

    ./example.sh
    ```

	- El nombre del script.

35. ¿De qué forma puedo iterar sobre las líneas de un archivo tras aplicar un cat sobre este e incorporar un pipe al final de la misma línea? (Consideremos almacenar el valor de cada línea por cada iteración en una variable con nombre "value"). pending

	- `while read value; do echo $value; done`.

36. ¿Cómo puedo mostrar por consola únicamente la versión de kernel que tengo?

	- `uname -r`.

37. ¿Qué expresión tendré que introducir a continuación para cambiar todas las palabras donde ponga "root" por "user" haciendo uso del comando "sed"?

	- `sed 's/root/user/g`.

38. ¿Cuál es la forma más rápida para meterme al directorio previamente creado?

	```BASH
    mkdir test
    ls

    test
    ```

	- `cd !$`.

39. ¿Con qué comando puedo saber en qué directorio me sitúo?

	- `pwd`.

40. ¿Es posible que $2$ archivos o más posean la misma ruta absoluta?

	- No.

41. ¿De qué forma puedo mostrar solo las 3 últimas líneas del archivo "hosts"?

	- `cat /etc/hosts | tail -n 3`.

42. ¿Cuál sería la expresión a establecer para una tarea Cron que quiero que se ejecute cada $3$ minutos?

	- `*/3 * * * *`.

43. ¿Qué se estará almacenando en el archivo "file" tras la ejecución del último comando?

	```BASH
    exec 3<> file
    exec 4>&3
    whoami 2>&1 >&4
    ```

	- El stdout del comando "whoami".

44. ¿Cuál es la representación en octal del siguiente permiso?

	```BASH
    .--x-----x
    ```

	- $101$.

45. ¿Con qué comando puedo traer un proceso en segundo plano al primer plano?

	- `fg`.

46. ¿Qué se mostrará por consola una vez se ejecute el siguiente comando?

	```BASH
    whoam && echo test || echo test2
    ```

	- El comando devolverá un error y mostrará la cadena "test2".

47. ¿De qué forma puedo indicar que quiero ejecutar una tarea Cron cada minuto, cada $2$ horas, cada $3$ días, cada $4$ meses y también los días viernes?

	- `* */2 */3 */4 5`.

48. ¿Con qué comando puedo crear un enlace?

	- `ln`.

49. ¿Qué estaré mostrando por consola con este comando?

	```BASH
    echo $HOME
    ```

	- Estaré mostrando el contenido de la variable de entorno.

50. ¿Cómo puedo ejecutar un proceso en segundo plano?

	- Incorporando un `&` al final de mi instrucción.

51. Empareja cada permiso con su representación octal correspondiente

	| permisos | octal |
	|:-----------:|:------:|
	| `r--r-xr--` | $454$ |
	| `----w---x` | $021$ |
	| `r-x-w-r-x` | $525$ |
	| `-w-r-x-w-` | $252$ |
	| `rwsr--r-x` | $4745$ |
	| `rwSr--r-x` | $4645$ |

52. ¿Qué comando puedo emplear para conocer el nombre de la máquina en la que estoy conectado?

	- `hostname`.

53. ¿Es el Kernel el núcleo del sistema operativo?

	- Verdadero.

54. ¿Qué formas correctas tendríamos en Bash para aplicar una suma entre dos números?

	- `echo 2+5 | bc`.

	- `echo "2+5" | bc`.

	- `echo $((2+5)) | bc`.

	- `echo $((2+5))`.

55. ¿Qué significa `./`?

	- Representa el directorio de trabajo.

56. ¿Cómo hago para copiar "archivo1" a "archivo2" que está en el directorio "/home/usuario/"?

	- `cp archivo1 /home/usuario/archivo2`.

57. ¿Existen físicamente todos los dispositivos que hay en `/dev`?

	- No.

58. ¿Qué se almacenará en el archivo file?

	```BASH
    exec 3<> file
    whoam 2>&3
    ```

	- El stderr.

59. ¿Si quiero ocultar el stderr de un comando, cómo lo podría hacer?

	- Agregando un `2>/dev/null` al final.

60. ¿Cada cuánto se ejecutaría la tarea Cron descrita por `* * */2 * *`?

	- Cada minuto, cada $2$ días.
