Feature: US01: Registrar artistas nuevos
Como artista 
quiero estar registrado en la app 
para poder recibir el apoyo necesario

Scenario: El artista se registra
    Dado que el artista no está registrado
    Y se encuentra en el formulario "Registrarse"
    Cuando el artista completa los campos <Nombres> <Apellidos> <Edad> <Genero> <Telefono> <Contrasena> <Correo electronico>
    Y el artista presiona el boton "Registrarme"
    Entonces el sistema registra al artista a la base de datos del sistema
    Y el sistema muestra un <mensaje de exito>
Examples: datos de entrada
    | Nombres | Apellidos | Edad | Genero | Telefono | Contrasena | Correo electronico |
    | Jesus  | Ramirez | 20  | Masculino | 923456789 | #$%Hola$% | Jesus123@gmail.com |  

Examples: datos de salida
    | mensaje de exito| 
    | La cuenta se ha registrado exitosamente  |
