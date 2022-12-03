# Notas
Nota: Usar un solo menos nos permite abreviar comandos y usar 2 menos son para usar palabras completas

Untrack: Todos los archivos que este en dicho luga, significa que no se les esta dando seguimiento.

Staged: Todos los archivos que esten en dicho lugar, significa que estan listos para hacerles un commit en dicho estado, osea darles seguimiento.

Nota: Si un Directorio esta vacio, no se le dara seguimiento, ni se notara que existe en le git status, debido a que git dice, para que mantenerlo, si esta vacio

.gitkeep: Este es un archivo vacio, el cual nos ayuda a decirle a git, que mantenga una carpeta vacia en el repositorio, dicho archivo, pesa casi cero bits y no contiene nada de información, estos archivos no pueden ser agregados con el comodin "git add <Path>*.<formato de archivo>:", debido a que no contiene un nombre definido. para mas información, ver el video "Diferentes formas de añadir al Stage"

Eliminación: Si se elimina un archivo mediante la consola, y quieres reestablecer todo a como estaba al principio del actual commit con el comando "git checkout -- .", no funcionara, dicho metodo solo funciona si el archivo es eliminado directamente con visual Studio Code.

Renombramieto a un archivo: Si renombras un archivos manualmente con visual studio code, al hacer git status, te aparecera dos archivos con el mismo nombre, pero con diferente simbolo, esto es por que git piensa que son archivos diferentes, por lo cual debemos de tener cuidado, para solucionar el problema, se deben de agregar con un commit, para que git se de cuenta q son el mismo archivo, y los una, para que asi te aparezca una "R" de que dicho archivo ha sido renombrado.

gitignore: Este archivo nos ayuda a ignorar archivos los cuales no queremos subir al repositorio.

# COMANDOS:


# Seccion 2:


## Primeros comandos de git:

git --version (git -v): Nos muestra la versión que tenemos de git

git --help (git -h): Nos muestra ayuda sobre los comandos que existen en git

git config --global user.name: Nos permite establecer nuestro nombre, para que asi sepa git quienes somos

git config --global user.email: Nos permite establecer nuestro correo, para que sepa git cual es nuestro correo

git config --global -e: Nos permite checar las configuraciónes que se le han echo a git, por ejemplo checar si las configuraciones del nombre y correo que dimos anteriormente con los comandos, se establecieron correctamente, osea, se cambiaron o ver si los alias que establecimos, se agregaron 


## Nuestro primer repositorio:

git init : Inicializa un repositorio de git

git status: Nos proporcionara información sobre los commits, la rama donde nos encontramos

git add <nombre>: Nos permite añadir o preparar un archivo por nombre al cual les daremos seguimiento mediante git

git add .: Nos permite añadir o prepar todos los archivo a los cuales les daremos seguimeinto mediante git

git reset <nombre>: Nos permite restaurar un archivo a su estado base, una utilidad que se le puede dar, es eliminar un seguimiento a un archivo en particular, el cual puede estar en el estado de preparación para darle seguimiento al archivo.

git commit -m <Message>: Nos permite hacer  commit a todos los archivos que esten en estado de preparación de hacerlo, para asi aguardar una copia del estado en el que esta el codigo actualmente.


## ¿Que hace git por nosotros en estos momentos?:

git checkout -- .: Nos permite reconstruir el proyecto a como esta en el ultimo commit


## Cambia nombre de la rama Master a Main:

git branch: Nos permite o proporciona el nombre de la rama en la que actualmente estamos trabajando, en caso de que no se especifique el nombre de la rama a la cual se le quiere cambiar el nombre, se le cambiara el nombre a la rama que este el usuario actualmente por el que ingreso.

git branch -m <nombre actual> <nombre nuevo>: Este comando nos permite cambiar el nombre de cualquier rama que deseemos

git config --globlal init.defaultBranch <name>: Nos permite renombrar la rama principal con otro nombre, y poner dicho nombre por default para que cada vez que iniciemos un proyecto, este por defecto dicha rama con el respectivo nombre que se proporciono.


## Demostración de la creación, puesta en escena y commits

git commit -am <Message>: Este comando es una forma de añadir y hacer un commit en una sola linea, sin necesidad de hacerlos por separado con los anteriores comandos que se mostraron anteriormente los cuales son "git add <nombreArchivo> o git add ." y "git commit -m <Message>", Dicho comando simplificado, solomente funcionara con aquellos archivos que tengan un seguimiento con anterioridad.

git log: Nos permite ver todos los commits que hemos echo con su respectiva fecha de creación y mensajes los cuales fueron definidos cuando hicimos el commit


## Diferentes formas de agregar archivos al escenario:

git add <Path>*.<formato de archivo>: Este comando es un comodin que nos permite agregar al staged todos los archivos que se encuentren en la carpeta que estemos y tengan dicho formato, ademas de que archivos que no tengan un nombre y solamente tengan el formato, no seran validos para este comando que es un comodin, ejemplo de el nombre de un archivo no aceptado:".gitpeek"


## Direntes formas de añadir al Stage:

git add /<carpeta o Path>: Este comando nos permite agregar todo lo que se encuentra en un directorio al staged, incluyendo subdirectorios, archivos de subdirectorios ect.

git add /<Path de la carpeta/ nombre archivo>: Este comando nos permite a agregar un solo archivo de una carpeta en particular.


## Creando Alias para nuestros comandos:

git status --short: Nos proporciona un resumen muy condensado de la información mas importante cuando hacemos un git status

git config --global alias.<alias> <Comando que representara el alias con comillas>: Este comando nos permite declarar alias a comandos los cuales sean demasiado largo, para que asi sean faciles y rapidos de escribir, ademas de que sean faciles de recordar, dichos alias, pueden ser definidos en el archivo de configuración global de git y ademas de que los alias deben de ser unicos, osea que no deben de chocar con las banderas del propio git.

git config --global alias.lg "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all": Es un alias que nos proporciono Fernando Herrera, el cual usa en su dia a dia, el cual nos permite visualizar la información de los logs, de una forma mas agradable y ordenada en la consola.


# Seccion 3:


## Cambios en los archivos:

git diff<NombreArchivo>: Este comando nos permite administrar que cambios se hicieron en un archivo especifico o global, dicho comandon es muy util en muchas ocasiones, debido a que si en algun momento no recordamos que modificaciones hicimos, podriamos implementar dicho comando y saberlo, este comando solamente mostrara modificaciones las cuales no esten en el staged.

git diff --staged <NombreArchivo>: Al igual que el anterior comando, este comando nos sirve para administrar las modificaciones que hicimos en un respectivo archivo, pero a diferencia del anterior, este nos muestra las modificaciones que se han echo de los archivos que se encuentran en el staged.

## Actualizar mensaje del commit y revertir commits:

git commit --amend -m <Mensaje>: Este comando nos permite modificar el mensaje del ultimo commit que hicimos.

git reset --soft HEAD^<numero anterio para volver a un commit en especifico>: Este comando nos permite retrocer a un commit anterior con el beneficio de que lo que hemos escrito no se borrara, pero lo que si se borrara es el commit registrado con el mensaje en el log, los archivos que esten en el stage para hacer commit, no se borraran de ahi y los archivos que aguardaron su estado con el commit despues, volveran al stage para estar listos para volver a hacer o estar en el commit nuevo.


## Preparando un repositorio para viajes en el tiempo:

git commit --amend: Este comando nos permitira cambiar el mensaje del ultimo commit, pero a difenrecia de que si le ponemos -m para poner el mensaje, este comando al no poner dicha letra con guion, nos mostrara un archivo en modo de editor, el cual contendra la información respectiva del commit como su mensaje, fecha de creación ect, la cual podra ser modificada mediante el editor que nos muestra la información en consola.

## Viajes en el tiempo, resets y reflog

git reset --soft <Hash>: Con este comando nos permite volver a un commit en particular, mediante su hash, el cual es una clave que se encuentra en el log, es una manera de volver asi como con el head, pero utilizamos el hash, con dicho comando, los archivos que esten en el stage para hacer commit, no se borraran de ahi y los archivos que aguardaron su estado con el commit despues, volveran al stage para estar listos para volver a hacer o estar en el commit nuevo.

git reset --mixed <Hash>: Con este comando nos permite volver a un commit en paticular, mediante su hash, el cual es una clave que enecuentra en el log, pero a diferencia con el que usa el soft, este comando si baja todos los archivos que estan en el stage y los commit agregados despues hasta el punto que queden listos para volver a añadirlos con el add y commit.

git reset --hard <Hash>: Con este comando nos permite volver a un commit en particular, mediante su hash, el cual es una clave que se encuentra en el log, pero a diferencia con el que usa el soft y mixed, este comando elimina todos los archivos que esten despues del commit que queremos volver, osea no conserva ningun cambio que se hizo despues de dicho commit.

git reflog: Este comando nos permite ver los logs de las referencias de todo lo que ha sucedido en orden cronologico, en pocas palabras, nos permite ver commits que fueron borrados del log principal, para que si necesitamos volver a un commit en particular que fue borrado con el reser --hard, podamos implementar este comando y ver las referencias de los logs borrados para asi poder obtener su hash y volver a dicho commit con el comando git reset --hard a dicho commit o punto de estado.

## Cambiar el nombre y eliminar archivos mediante git:

git mv <nombreArchivoActual><nombreArchivoActualizado>: Este comando nos permite renombrar o mover un archivo en especifico, en caso de que tengamos una necesidad de hacerlo, ahi que tener en cuenta, que al renombrar un archivo, se tiene que volver a hacer el commit, para que aguarde los cambios git, ademas de que ya no hay necesidad de utilizar el comando "add", debido a que al renombrarlo, automaticamente se agrega o pasa al staged, para poder hacer el commit directamente sin que agregemos el comando "add";

git rm <NombreArchivo>: Este comando nos permite eliminar un archivo en especifico, los cuales se les esta dando seguimiento, osea, si en una carpeta ahi varios archivos en los cuales las mayoria tengan seguimiento, pero otros no, solamente se borraran los archivos con seguimiento y no los q sean ignorados o solamente no tengan seguimiento

# Seccion 4:

## Merge: Fast-Forward:

git branch <nombreRama>: Este comando nos sirve para poder crear nuevas ramas, las cuales seran de gran ayuda, debido a que podemos hacer nuevas funcionalidades de una forma segura, ya que no corremos peligro de que si implementamos algo, nos dañe el proyecto por un error, ademas de que una vez finalizada dicha funcionalida, podemos agregar o juntar dicha rama, con la rama principal.

git branch: Este comando nos permite ver las ramas en las cuales estamos trabajando y la rama en la que estamos, lo cual es muy util, ya que podemos llevar un control de las ramas que hemos creado.

git checkout <nombreRama>: Este comando nos sirve para poder estar cambiando entre rama y rama en la cual nos encontramos, lo cual es muy util, debido a que podemos intercambiar espacios de trabajo a voluntad.

git merge <ramaNombre>: Este comando nos permite hacer la unión de una rama con otra, es muy importante estar en la rama la cual se le quiere añadir los cambios de otra rama, un ejemplo seria, que si tu quieres traer unos cambios de otra rama, a la rama main, lo principal para hacer dicha acción, es asegurarte que estes en la rama main, para asi proceder a hacer este comando especificando la rama de la cual traeras sus cambios o con la que aras la unión a la rama main.

git branch -d <nombreRama>: Este comando nos sirve para borrar una rama en particular, cuando dicha rama ya no sea necesaria mantenerla, o simplemente tenga utilidad, por lo general esto pasa, cuando hicimos un merge, de nuestra rama, lo cual hace que ya no sea de utilidad una rama, ademas si este comando se utiliza en una rama, que no ha sido unida con otra, antes de que se borre permanentemente, nos dara un aviso git, de que los cambios o commit que contiene la rama que borraremos, no han sido unidos o juntados con otra rama, en poca palabra, nos mostrara un aviso, de que si dicha rama queremos eliminarla, apesar de que no ha sido unida con otras ramas.

git branch -d -f <nombreRama>: Este comando nos sirve para borrar una rama en particular, al igual que el anterior commit, pero a diferencia del anterior, dicha rama se borrar forzada con este comando, haciendo que le digamos a git, que no nos importa borrar dicha rama, apesar de que no ha sido unida dicha rama con otra, en pocas palabras, no nos mostrara el mensaje de que si estamos seguro de borrar dicha rama, si no lo ara directamente sin preguntar.

## Merge: Union automática:

git checkout -b <nombreRama>: Este comando nos sirve para crear una nueva rama y al vez movernos a dicha rama creada de la rama en la que nos encontramos, los cual es muy eficiente, por que nos simplifica la ejecución de dos comandos.

## Creando etiquetas - Tags

git tag <nombreTag>: Este comando nos sirver para crear un tag, el cual es una versión importante, la cual puede ser lanzada a producción, los tags son importantes, debido a que se le denominan commits importantes donde nuestro proyecto estaba finalizado hace tiempo.

git tag: Este comando, nos permite ver o vizualizar los tags que hemos generado o creado en nuestro proyecto, a medida que ha pasado el tiempo.

git tag -d <nombreTag>: Este comando nos permite borrar un tag en especifico, los cuales hemos generado atraves de un determinado tiempo, para tener una versión importante de nuestro proyecto.

git tag -a <nombreTag> -m <msg>: Este comando nos permite agregar un tag definiendo un nombre, ademas de que gracias a la bandera -a  ayuda a tener más información del momento de su creación, como la fecha de creación, nombre, email y un mensaje con la bandera -m  de dicho programador, el cual diga algunas palabras clave, para entender a que commit o parte del proyecto se le ha echo un tag, en caso de que no se agrege la bandera -m, git ara que entres en un modo, en el cual escribas el mensaje manualmente en dicho modo.

git tag -a <nombreTag> <Hash> -m <msg>: Este comando al igual que el anterior nos permite agregar o hacerle un tag a un commit en particular, con la unica diferencia que en este podemos especificar a que commit le haremos dicho tag mediante su hash, el cual se encuentra en el log.

 git show <nombreTag>: Este comando nos permite ver o visualizar la información de un tag que fue creado en nuestro proyecto, mediante su nombre, en donde podremos checar el nombre del tag, mensjae, quien lo creo, etc.

# Sección 5:

## GitStash:

git stash: Nos permite mover todos los cambios que se an echo, despues del ultimo commit, ya sean desde crear archivos sin seguimiento por git o modificar archivos con seguimeinto, los cuales son almacenados en un lugar especial llamado Stash, el cual es como una bovedad, donde podemos aguardar dichos cambios de una forma segura.

git stash list: Este comando nos permite ver las referencias de todos los stash que se an creado en nuestro proyecto a medida que fuimos trabajando.

git stash pop: Este comando nos permite sacar las ultimas modificaciones que se aguardaron en el stash, para que asi podamos recuperarlas y poder seguir trabajando sin perder nuestro trabajo.

## Stash avanzado:

git stash clear: Este comando nos permite eliminar todos los stash que se encuentren en dicho espacio, de igual forma es utilizado para borrar basura, la cual queda despues de restaurar el stash, y que hubo un conflicto.

git stash apply stash@{numeroStash}: Este comando nos permite recuperar los cambios que se habian echo y aguardado en un stash, en el cual podemos especificar el numero del stash del cual queremos recuperar, en caso de que no ponga un numero de stash, agarrara el ultimo stash agregado en la lista stash, ademas de que con este comando, al recuperar un stash, dicho stash no se elimina automaticamente como con el comando pop.

git stash drop stash@{numeroStash}: Este comando nos permite eliminar un stash en especifico, al cual le proporcionaremos el numero del stash a eliminar, lo cual es muy util, ya que podemos eliminar stash especificos a voluntad, ademas de que si no se proporciona un numero de stash, eliminara al ultimo stash agregado por defecto.

git stash show stash@{numeroStash}: Este comando nos permite ver información de un stash especifico mediante el numero de stash, los cuales se encuentra en dicho apartado privado.

git stash save "<msgStash>": Este comando nos permite agregar un nuevo stash a la bovedad segura de los stash, con la unica diferencia la cual es que podemos agregar un mensaje en el cual describamos que cambios aguardamos en dicho stash.

git stash list --stat: Este comando nos permite visualizar una lista de todos los stash que hemos agurdado y echo, los cuales mostraran mas información a profundidad que el stash show, lo cual es muy util, ya que podemos comprender mejor que cambios aguardamos en dicho stash.

 ## Rabase-Actualizando una rama:

git rebase <nombreRama>: Este comando nos permite hacer que los commits que han sido agregados despues en una rama alterna, sean agregados a otra rama, la cual no tenga dichos cambios, para que asi dicha rama al hacer modificiones en ella, tenga ya previamente los cambios echos en la rama a la cual le hicimos el rebase, ademas de que para hacer el rebase, se necesita estar en la rama la cual se lo aremos, ejemplo, si quiero contener o que sean parte todos los commit de la rama main que han sido agregados resientemente, tendria que estar en la rama a la cual le añadiremos los commits que han sido agregado al main, para que asi ejecutemos este comando.

## Rebase-Squash:

 git rebase -i HEAD~<numeroCommits>: Este comando nos permite hacer un rebase interactivo el cual nos ayuda a unir commits los cuales puede ser que sean redundante en la accion que hicimos mediante nuestro codigo, por ejemplo, que tengamos un mensaje anterior de que modificamos 2 datos del archivo misiones completadas, y luego volvemos a hacer otra modificacion en el archivo, si nos damos cuenta ahi redundancia en los mensajes, ya que en los dos hicimos la misma accion, haciendo que sea innecesario el ultimo mensaje, por lo cual hacemos un rebase intereactivo, al ejecutar este comando, nos mandara o abrira un archivo de texto, en el cual veremos varias opciones de las cuales usuaremos el Squash, que es el que nos permite unir commit, seleccionamos al cual queremos hacerle el squash, y git automaticamente agarra el anterior commit del commit actual que seleccionamos, y los unira, una vez aguarado los cambios, nos madara a otro archivo de texto, el cual nos mostrara los mensajes de los commits que hemos seleccionado, en donde nos pedira que especifiquemos un mensaje en general para esos commis unidos, y en caso de que lo dejamos por defecto, agarrar el mensaje anterior del mas antiguo commit que tengamos seleccionado

 ## Rebase-Reword:

 pick (p): Es como decir que solamente esta seleccionado pero no se hace nada con dicho argumento

 reword (r): Nos permite actualizar el mensaje de un commit especifico mediante el rebase interactivo, una vez ingresado dicho parametro, guardamos cambios y salimos del editor de codigo, para que asi nos mande al modo del rebase interactivo, depediendo cuatos reword le asignamos a los commits, nos aparecera esas veces de edición de los mensajes.

 ## Rebase-Edit:

 git checkout -- <NombreArchivo>: Nos permite reestablecer los cambios que se le han echo a un archivo especifico al cual todavia sus cambios no se le han echo add y commit.

edit (e):Esta bandera en el rebase interactivo nos permite modificar un commit, como por ejemplo dividir un commit en 2, por que hicimos un commit erroneamente donde incluimos dos cosas diferente, una vez seleccionado con esta bandera los commits, no nos mostrara la pantalla de edición inmediantamente como en las otras ocaciones, si no en la consola nos dara dos comando, el cual el primero nos servira para cambiarle el nombre al ultimo commit y el segundo nos permitira continuar con la edición del rebase haciendole saber que estamos satisfechos por fin a git con los cambios que hicimos, para poder hacer cambios se utiliza el "git rese HEAD^" para retroceder a un commit anterior, recordar que si no especificamos el tipo de reset tomara por defecto el mixed, a esta forma se le conoce como un rebase manual. si nosotros hacemos un git lg, nos dira en dicha sección que estamos en un rebase interactivo en proceso.

 git rebase --continue: Nos permite continuar con el rebase interactivo cuando hacemos el anterior commit, se utiliza normalmente cuando ya hicimos cambios con el rebase interactivo.


 checar el cambio de nombre de las ramas en git


# Sección 6

## Introducción Github Remote-Push & Pull

git remote add origin <URl del repositorio>: Nos permite asignar un origen remoto de nuestro proyecto para asi respaldar nuestro proyecto.


gir remote -v : Nos permite revisar las fuentes remotas que tenemos agregadas en nuestro repositorio.

git push -u origin main:  el main viene siendo la rama a la cual le aremos push, el origin es el nombre del repositorio y la -u nos ayuda a que la proxima vez que queramos hacer push, no necesitemos especificar la rama, ya que ponemos por defecto la rama main usando dicha bandera, para que asi solo hagamos git push

## Push de los Tags de nuestro repositorio


git push --tags: Este comando nos permite subir a nuestro repositorio remoto todos los tags que tenemos creados en nuestro repositorio localmente, ya que el hacer el push de nuestro repositorio de nuestras rama, no quiere decir que de igual forma nuestros tags se subiran automaticamente.

## Pull de los últimos cambios en el repositorio de GitHub

git pull: Este comando nos permite checar y traer los cambios que se ayan agregado en nuestro repositorio remota, lo cual hace que nuestro repositorio local se actualice con los ultimos cambios.

git pull origin <NombreRama>: Este comando nos permite traer los cambios de una rama en particular, lo cual hace que nuestro repositorio local se actualice.


## Clonar un repositorio

git clone <url HTTP>: Este comando nos ayuda a clonar un repositorio que se encuentre remotamente en github.


##  Git Pull Rebase

git config pull.rebase true: Este comando nos permite cambiar la manera en la cual git tiene como automatico tratar conflictos que hay en el repositorio remoto con el local, al momento de hacer un pull, haciendo que la forma automatica de tratar esos inconvenientes que el fast foward se cambien por un rebase interactivo.


git config --global pull.rebase true: Este comando al igual que el anterior nos ayuda a decirle a git que cambie la configuracion por de defecto del fast foward por un rebase interactivo, para asi poder solucionar los errores de forma manual.


# Sección 7:




