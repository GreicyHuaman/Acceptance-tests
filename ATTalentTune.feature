Feature: US01: Registrar artistas nuevos
Como artista 
quiero estar registrado en la app 
para poder recibir el apoyo necesario

Scenario: El artista se registra
    Dado que el artista no está registrado
    Y se encuentra en el formulario "Registrarse"
    Cuando el artista completa los campos <Nombres><Apellidos><Edad><Genero><Telefono><Contrasena><Correo electronico>
    Y el artista presiona el boton "Registrarme"
    Entonces el sistema registra al artista a la base de datos del sistema
    Y el sistema muestra un <mensaje de exito>
Examples: datos de entrada
    | Nombres | Apellidos | Edad | Genero | Telefono | Contrasena | Correo electronico |
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
    Dado que el artista ha seleccionado la opción de "Cambiar contraseña" en su perfil
    Cuando el artista ingresa su <contrasenia actual> y <la nueva contrasenia dos veces> para confirmación
    Y el artista presiona el botón "Cambiar contraseña"
    Entonces el sistema actualiza la contraseña del artista en la base de datos
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
    Y el artista presiona el botón "Eliminar Perfil" en la configuración
    Entonces el sistema elimina el perfil del artista de la base de datos
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
    Cuando el manager accede a su perfil o configuración de notificaciones
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
    Y la muestra al manager en su perfil o en una sección de notificaciones
    

Feature: US26: Visualizar la información de los artistas
Como manager
quiero tener la capacidad de visualizar la información detallada de los artistas en la plataforma 
para evaluar su talento 
y determinar si son adecuados para mi empresa o eventos

Scenario: Visualización de perfil de artista
    Dado que el manager ha iniciado sesión en la aplicación
    Cuando el manager accede a la sección de "búsqueda de artistas" o recibe una notificación sobre un artista
    Y el manager selecciona un "artista específico de la lista o notificación"
    Entonces el sistema muestra el perfil completo del artista, que incluye información como nombre, género musical, ubicación, biografía, fotos y videos, muestras de música, experiencia

Feature: US27: Filtrar por categoría y género
Como manager
quiero poder filtrar la lista de artistas por categoría y género musical 
para encontrar talentos que se adapten a las necesidades específicas de mis eventos o empresa

Scenario: Filtrar por categoría
    Dado que el manager ha iniciado sesión en la aplicación
    Cuando el manager accede a la sección de búsqueda de artistas
    Y el manager selecciona una <categoria artistica>, como "Solista" o "Banda" de las opciones disponibles en el filtro
    Entonces el sistema muestra una lista de artistas que se ajustan a la categoría seleccionada

Examples: datos de entrada
|categoria artistica|
| Solista       |

Scenario: Filtrar por género musical
    Dado que el manager está en la sección de búsqueda de artistas
    Cuando el manager selecciona un <genero musical> específico, como "Rock," "Pop" o "Electrónica," de las opciones disponibles en el filtro
    Entonces el sistema muestra una lista de artistas que se identifican con el género musical seleccionado

Examples: datos de entrada
| género musical |
| Rock           |

Feature: US28: Enviar reuniones para una audición
Como manager
Quiero enviar una invitación a un artista para una audición
Para coordinar una evaluación o audición presencial o virtual

Scenario: Enviar solicitud de reunión o audición
   Dado que el manager ha iniciado sesión en la aplicación.
    Cuando el manager está visualizando el perfil de un artista que le interesa.
    Y el manager selecciona la opción "Enviar solicitud de audición" en el perfil del artista
    Entonces el sistema permite al manager "configurar los detalles de la solicitud", como la <fecha> <hora> <ubicacion> <plataforma virtual>
    Y el manager "envía la solicitud al artista" 
    Y le aparece un <mensaje de confirmacion> de "Se envio correctamente la solicitud detallada"

Examples: datos de entrada
| fecha |   hora    |    ubicacion   | plataforma virtual |   
|14/05/2024| 16:00 horas|     Casa      |   zoom    |

Examples: datos de salida
| mensaje de confirmación                               |
| Se ha enviado correctamente la solicitud de audición |

Scenario: Envío erróneo de solicitud de reunión o audición
    Dado que el manager ha iniciado sesión en la aplicación.
    Cuando el manager está visualizando el perfil de un artista que le interesa.
    Y el manager selecciona la opción "Enviar solicitud de audicion" en el perfil del artista
    Entonces el sistema permite al manager "configurar los detalles de la solicitud", como la <fecha> <hora> <ubicacion> <plataforma virtual>
    Y el manager presiona el boton de <cancelar> y aparece un mensaje de "Se cancelo la solicitud de audicion"
    Y se redirecciona a la página principal

Examples: datos de entrada
| fecha |   hora    |    ubicacion   | plataforma virtual |   
|14/05/2024| 16:00 horas|     Casa      |   zoom    |

Examples: datos de salida
| cancelar                               |
| Se cancelo la solicitud de audicion |

Feature: US29: Visualizar el número de reproducciones de la canción
Como artista
quiero poder visualizar el número de reproducciones de mis canciones en la plataforma 
para medir su popularidad y evaluar el interés de los oyentes

Scenario: Visualización de reproducciones 
    Dado que el artista ha iniciado sesión en la aplicación
    Cuando el artista accede a su perfil o a la sección de gestión de canciones. 
    Entonces el sistema muestra una lista de las canciones del artista, junto con el número de reproducciones de cada canción.

Scenario: Visualización de reproducciones comparativo
    Dado que el artista quiere comparar el rendimiento de varias canciones
    Cuando el artista selecciona varias canciones y visualiza el número de reproducciones de cada una de ellas en una vista comparativa. 
    Entonces el sistema muestra los datos de reproducciones de las canciones seleccionadas para su análisis.

Feature: US30: Visualizar la cantidad de seguidores y artistas
Como usuario registrado en la plataforma
quiero poder visualizar la cantidad de seguidores 
y artistas a los que estoy conectado 
para tener una idea de mi presencia y red en la comunidad musical

Scenario: Visualización de seguidores
    Dado que el usuario ha iniciado sesión en la aplicación
    Cuando el usuario accede a su Perfil
    Entonces el sistema muestra la lista de sus seguidores

Scenario: Visualizacion de artistas seguidos
    Dado que el usuario está en su perfil
    Cuando el usuario accede a la sección de <Artistas Seguidos> o <Mis Favoritos>
    Entonces el sistema muestra el "número total de artistas a los que el usuario sigue" o "ha marcado como favoritos"

Examples: datos de salida
| ArtistasSeguidos | MisFavoritos |
|   100   |     10      |

Feature: US31: Recibir alertas cuando las estadísticas bajen
Como manager
quiero recibir alertas o notificaciones cuando las estadísticas o el rendimiento de un artista que estoy gestionando disminuyan significativamente
para tomar medidas adecuadas y mantener un alto nivel de calidad y éxito

Scenario: Configuración de alertas
    Dado que el manager ha iniciado sesión en la aplicación.
    Cuando el manager accede a la "sección de gestión de artistas o estadísticas"
    Entonces el sistema permite al manager configurar las alertas específicas que desea recibir, como una disminución del número de reproducciones, una disminución en la cantidad de seguidores, etc.

Feature: US32: Colores llamativos
Como seguidor 
quiero tener una interfaz visual
para tener mayor comodidad en la aplicación

Scenario: Tener colores llamativos
    Dado que soy un seguidor y utilizo la aplicación
    Cuando abro la aplicación
    Entonces los colores utilizados en la interfaz deben ser vibrantes y llamativos
    Y los colores deben ser agradables a la vista, evitando combinaciones que dificulten la legibilidad o causen fatiga visual.

Feature: US33: Interfaz dinámica y amigable
Como seguidor 
quiero tener una interfaz dinámica y amigable 
para que se haga más ameno e intuitivo el uso de esta página

Scenario: Interfaz dinámica y amigable
    Dado que soy un seguidor y utilizo la aplicación.
    Cuando interactúo con la interfaz de la aplicación.
    Entonces la interfaz debe responder de manera fluida a mis acciones, como desplazamientos y selecciones.
    Y la interfaz debe ser fácil de navegar, con menús y botones claramente etiquetados.
    Y se deben minimizar los tiempos de carga y la espera del usuario durante las transiciones.
    Y la interfaz debe proporcionar retroalimentación visual y clara en respuesta a mis acciones (por ejemplo, cambios de color o animaciones).

Feature: US34: Conocer nuevos artistas
Como seguidor
quiero recibir notificación cuando hay nuevos artistas
para conocerlos e inspirarme

Scenario: Notificaciones de nuevos artistas
    Dado que soy un seguidor y utilizo la aplicación
    Cuando nuevos artistas se unan a la plataforma o publiquen música
    Entonces debo recibir notificaciones en tiempo real o periódicas sobre estos nuevos artistas
    Y las notificaciones deben incluir información relevante sobre los artistas, como su nombre, género musical o una muestra de su música
    Y debo tener la opción de habilitar o deshabilitar estas notificaciones en la configuración de mi perfil

Feature: US35: Filtros de categorías y géneros musicales
Como seguidor
quiero poder filtrar por categoría y géneros musicales a los artistas nuevos
para que esten organizados

Scenario: Filtrar por categoría y géneros musicales
    Dado que soy un seguidor y utilizo la aplicación.
    Cuando navego por la sección de nuevos artistas o artistas disponibles.
    Entonces debo tener la capacidad de aplicar filtros por categoría y géneros musicales para explorar artistas que se ajusten a mis preferencias.
    Y los filtros deben ser fáciles de usar y seleccionar, con opciones claras y una interfaz intuitiva.
    Y los resultados de la búsqueda deben actualizarse automáticamente a medida que aplicas los filtros.
    Y debo poder eliminar los filtros y volver a la vista completa de artistas en cualquier momento.

Feature: US36: Recibir notificaciones de artistas que sigo
Como seguidor
quiero recibir notificaciones de los artistas que sigo
para apoyarlos

Scenario: Notificaciones de artistas que sigo
    Dado que soy un seguidor y utilizo la aplicación.
    Cuando un artista que sigo publique nueva música o realice anuncios importantes
    Entonces debo recibir notificaciones en tiempo real o periódicas sobre las actividades de los artistas que sigo
    Y las notificaciones deben incluir información relevante, como el nombre del artista, el título de la nueva música o el anuncio específico
    Y debo tener la opción de habilitar o deshabilitar estas notificaciones para cada artista que sigo en la configuración de mi perfil.
