Feature: US01: Registrar artistas nuevos
Como artista 
quiero estar registrado en la app 
para poder recibir el apoyo necesario

Scenario: El artista se registra
    Dado que el artista no está registrado
    Y se encuentra en el formulario "Registrarse"
    Cuando el artista completa los campos <Nombres> <Apellidos> <Edad> <Genero> <Telefono> <Contrasenia> <Correo electronico>
    Y el artista presiona el boton "Registrarme"
    Entonces el sistema registra al artista a la base de datos del sistema
    Y el sistema muestra un <mensaje de exito>
Examples: datos de entrada
    | Nombres | Apellidos | Edad | Genero | Telefono | Contrasenia | Correo electronico |
    | Jesus  | Ramirez | 20  | Masculino | 923456789 | #$%Hola$% | Jesus123@gmail.com |  

Examples: datos de salida
    | mensaje de exito| 
    | La cuenta se ha registrado exitosamente  |

Feature: US02: Editar la informacion del perfil artista
Como artista 
quiero poder editar la información de mi perfil en la aplicación 
para mantenerla actualizada 
y atractiva para mis seguidores

Scenario: Cambio de contraseña 
    Dado que el artista ha seleccionado la opción de "Cambiar contraseña" en su perfil.
    Cuando el artista ingresa su <contrasenia actual> y <la nueva contrasenia dos veces> para confirmación.
    Y el artista presiona el botón "Cambiar contraseña".
    Entonces el sistema actualiza la contraseña del artista en la base de datos.
    El sistema muestra un <mensaje de exito> de "la contraseña se ha cambiado exitosamente"

Examples: datos de entrada
| contrasenia actual | contrasenia nueva | confirmacion contrasenia |
| HolaMundo123      | HolaNuevo123     | HolaNuevo123           |

Examples: datos de salida
| mensaje de exito                         |
| La contraseña se ha cambiado exitosamente |

Feature: US03: Eliminar perfil del artista
Como artista 
quiero tener la opción de eliminar mi perfil en la aplicación
para borrar la informacion que brinde al registrarme

Scenario: Eliminación de perfil
    Dado que el artista ha iniciado sesión en la aplicación y desea eliminar su perfil
    Cuando el artista se encuentre en su perfil
    Y el artista presiona el botón "Eliminar Perfil" en la configuración.
    Entonces el sistema elimina el perfil del artista de la base de datos.
    Y el sistema muestra un <mensaje de confirmacion> de "el perfil se ha eliminado correctamente"

Examples: datos de salida
| mensaje de confirmacion              |
| El perfil se ha eliminado correctamente |

Feature: US25: Recibir notificaciones del contenido de nuevos artistas
Como manager
quiero recibir notificaciones sobre el contenido y actividades de nuevos artistas en la plataforma 
para estar al tanto de posibles talentos que puedan ser de interés para mi empresa o eventos.

Scenario: Configurar preferencias de notificación
    Dado que el manager ha iniciado sesión en la aplicación 
    Cuando el manager accede a su perfil o configuración de notificaciones. 
    Entonces el sistema permite al manager "configurar sus preferencias de notificación" relacionadas con el contenido y actividades de nuevos artistas, como <genero musical> <ubicacion> <nivel de experiencia> <tipo de contenido>
    Y el manager presiona el boton de "Guardar preferencias de notificaciones" 
    Y el sistema muestra un <mensaje de exito> de "Se guardaron las preferencias de notificaciones"

Examples: datos de entrada
|genero musical | ubicacion | nivel de experiencia | tipos de contenido |
| rock          | ciudad   | intermedio        | canciones            |

Examples: datos de salida
| mensaje de exito                               |
| Se guardaron las preferencias de notificaciones |

Scenario: Notificación de nuevos artistas y contenido relevante
    Dado que el manager ha configurado sus preferencias de notificación
    Cuando un nuevo artista se registra en la plataforma y cumple con las preferencias especificadas por el manager, o cuando un artista existente publica nuevo contenido o realiza actividades relevantes
    Entonces el sistema genera una notificación 
    Y la muestra al manager en su perfil o en una sección de notificaciones.   

Feature: US26: Visualizar la información de los artistas
Como manager
quiero tener la capacidad de visualizar la información detallada de los artistas en la plataforma 
para evaluar su talento 
y determinar si son adecuados para mi empresa o eventos.

Scenario: Visualización de perfil de artista
    Dado que el manager ha iniciado sesión en la aplicación.
    Cuando el manager accede a la sección de "búsqueda de artistas" o recibe una notificación sobre un artista
    Y el manager selecciona un "artista específico de la lista o notificación"
    Entonces el sistema muestra el perfil completo del artista, que incluye información como nombre, género musical, ubicación, biografía, fotos y videos, muestras de música, experiencia.

Feature: US27: Filtrar por categoría y género
Como manager
quiero poder filtrar la lista de artistas por categoría y género musical 
para encontrar talentos que se adapten a las necesidades específicas de mis eventos o empresa.

Scenario: Filtrar por categoría
    Dado que el manager ha iniciado sesión en la aplicación.
    Cuando el manager accede a la sección de búsqueda de artistas.
    Y el manager selecciona una <categoria artistica>, como "Solista" o "Banda" de las opciones disponibles en el filtro.
    Entonces el sistema muestra una lista de artistas que se ajustan a la categoría seleccionada.

Examples: datos de entrada
|categoria artistica|
| Solista       |

Scenario: Filtrar por género musical
    Dado que el manager está en la sección de búsqueda de artistas.
    Cuando el manager selecciona un <genero musical> específico, como "Rock," "Pop" o "Electrónica," de las opciones disponibles en el filtro.
    Entonces el sistema muestra una lista de artistas que se identifican con el género musical seleccionado.

Examples: datos de entrada
| genero musical |
| Rock           |

