###Paso 0 : Enumera las responsabilidades

Empieza enumerando las responsabilidades de tu aplicación. Estas no son solamente los comandos de la interfaz de usuario como `add`, `delete` etc . Son también las responsabilidades del back end como leer y escribir al archivo de texto `todo.txt` o csv `todo.csv`, parsear los los argumentos de la linea de comandos, e imprimir la `interfaz` en la consola.   

Cada responsabilidad debe mapearse a una unidad de código en Ruby. Por ejemplo:  

Responsabilidad                                                                     | En Código
-----------------------------------------------------------------------------------|------------------------------------
I. Responsabilidades & Comandos de la interfaz del usuario

1. Inicializar una lista de todos vacia                                                | `list = List.new`
2. Agregar un todo a la lista                                                          | `list.add(Task.new("walk the dog"))`
3. Mostrar todos los todos de la lista                                                 | `tasks = list.tasks`
4. Borrar una tarea en particular de lista                                             | `list.delete(task_id)`
5. Completar una tarea en particular de la lista                                       | `List.complete(task_id)`
6. Marcar sin completar una tarea ya completada                                        | `List.
7. Vaciar toda la lista

II. Responsabilidades del back end de la lista

1. Asignarle un ID al todo una vez el todo sea agregado
2. Reasignar IDs una vez un todo ha sido borrado
3. Asignarle la fecha de  al todo

II. Responsabilidades del back end

1. Tomar y persear los argumentos de la linea de comando correctamente                   | `???`
2. Comvertir el archivo de texto o csv en objetos de facil uso en Ruby | `???`
