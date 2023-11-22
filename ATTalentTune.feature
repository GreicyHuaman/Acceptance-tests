Feature: Registro de Artista
  Como artista 
  quiero estar registrado en la app 
  para poder recibir el apoyo necesario

  Scenario: Registrar artista
    Given que estoy en la página de <registro de artista>
    When ingreso mi <informacion personal> (<Nombres><Apellidos><Edad><Genero><Telefono><Contrasena><Correo electronico>)
    And el artista presiona el boton "Registrarme"
    And el sistema muestra un <mensaje de exito>
    Then debería ver mi <perfil de artista>
    
    Examples: datos de entrada
        | Nombres | Apellidos | Edad | Genero | Telefono | Contrasena | Correo electronico |
        | Jesus  | Ramirez | 20  | Masculino | 923456789 | #$%Hola$% | Jesus123@gmail.com |  

    Examples: datos de salida
        | mensaje de exito| 
        | La cuenta se ha registrado exitosamente  |    

  Scenario: Editar información del perfil artista
    Given que estoy en la página de <perfil de artista>
    When edito mi <informacion personal>
    Then debería ver mi perfil de artista actualizado
    And el sistema muestra un <mensaje de exito>

    Examples: datos de salida
        | mensaje de exito|
        | La informacion se ha actualizado exitosamente  |  

  Scenario: Eliminar perfil del artista
    Given que estoy en la página de <perfil de artista>
    When elimino mi <perfil de artista>
    And el sistema muestra un <mensaje de exito>
    Then debería ver la <pagina de inicio>

    Examples: datos de salida
        | mensaje de exito|
        | Se ha eliminado su perfil correctamente  |

Feature: Carga de música
  Como artista 
  quiero poder cargar mi música a la plataforma 
  para compartirla con otros y promocionarla

  Scenario: Filtrar la visibilidad de mis canciones
    Given que estoy en la <pagina de carga de musica>
    When selecciono la visibilidad de mis canciones
    And el sistema muestra un <mensaje de exito>
    Then debería ver mis canciones cargadas

    Examples: datos de salida
        | mensaje de exito|
        | Canción subida exitosamente  |

  Scenario: Cargar música
    Given que estoy en la <pagina de carga de musica>
    And el usuario presiona el <boton de adjuntar musica>
    When cargo mi música
    And el sistema muestra un <mensaje de exito>
    Then debería ver mi música cargada

    Examples: datos de entrada
        | boton de adjuntar musica | 
        | Adjuntar archivo         |

    Examples: datos de salida
        | mensaje de exito|
        | Musica subida exitosamente  |

  Scenario: Editar música
    Given que estoy en la <pagina de edicion de musica>
    When presiono el boton <editar mi musica>
    And puedo cambiar el <nombre de la musica><recortar audio>
    And presiona el boton <guardar cambios>
    And el sistema muestra un <mensaje de exito>
    Then debería ver mi <musica actualizada>

    Examples: datos de entrada
    | nombre de la musica | recortar audio | guardar cambios |
    |  oye mi amor |  2:50 |  los cambios se guardaron |

    Examples: datos de salida
    | mensaje de exito|
    | Musica actualizada exitosamente  |

  Scenario: Eliminar música
    Given que estoy en la página de <eliminacion de musica>
    When elimino mi música
    And el sistema muestra un <mensaje exitoso>
    Then debería ver la página de inicio

    Examples: datos de salida
    | mensaje exitoso|
    | Musica eliminada exitosamente  |

Feature: Búsqueda de artistas
  Como artista 
  quiero buscar personas con gustos similares 
  para crear una banda

  Scenario: Búsqueda de artistas en común
    Given que estoy en la <pagina de busqueda de artistas>
    When busco artistas en común
    Then debería ver una <lista de artistas en comun>

  Scenario: Crear grupo de artistas
    Given que estoy en la <pagina de creacion de grupo de artistas>
    When creo un <grupo de artistas>
    And configuros los detalles como <nombre><participantes>
    And el sistema muestra un <mensaje exitoso>
    Then debería ver mi grupo de artistas creado

    Examples: datos de entrada
    | nombre | participantes |
    | grupo de rock | 3 |

    Examples: datos de salida
    | mensaje exitoso|
    | Grupo de artistas creado exitosamente  |

  Scenario: Crear salas virtuales con otros artistas
    Given que estoy en la <pagina de creacion de salas virtuales>
    When creo una <sala virtual con otros artistas>
    And configuros los detalles como <participantes><fecha><hora>
    And el sistema muestra un <mensaje exitoso>
    Then debería ver mi <sala virtual creada>

    Examples: datos de entrada
    | participantes | fecha | hora |
    | 3 | 2022-01-01 | 11:00 |

    Examples: datos de salida
    | mensaje exitoso|
    | Sala virtual creada exitosamente  |

Feature: Gestión de contenido multimedia
  Como artista 
  quiero poder gestionar mi contenido multimedia 
  para elegir cuales encabezan mi repertorio

  Scenario: Destacar una canción
    Given que estoy en la <pagina de destacado de canciones>
    When <destaco una cancion>
    And el sistema muestra un <mensaje exitoso>
    Then debería ver mi <cancion destacada>

    Examples: datos de salida
    | mensaje exitoso|
    | Cancion destacada exitosamente  |

  Scenario: Reordenar mi lista de canciones
    Given que estoy en la <pagina de reordenamiento de canciones>
    When reordeno mi lista de canciones
    And el sistema muestra un <mensaje exitoso>
    Then debería ver mi lista de canciones reordenada
    Examples: datos de salida
    | mensaje exitoso|
    | Canciones reordenadas exitosamente  |

  Scenario: Organizar canciones en una lista de reproducción personalizada
    Given que estoy en la <pagina de organizacion de canciones>
    When organizo mis canciones en una <lista de reproduccion personalizada>
    And se organiza mediante <genero musical><artistas> 
    And el sistema muestra un <mensaje exitoso>
    Then debería ver mi <lista de reproduccion personalizada creada>
    
    Examples: datos de entrada
    | genero musical | artistas |
    | Rock | Led Zeppelin |

    Examples: datos de salida
    | mensaje exitoso|
    | Listas de reproducción personalizada creada exitosamente  |

Feature: Gestión de fans
  Como artista 
  quiero gestionar a mis fans 
  para interactuar con ellos y avisarles de noticias o eventos importantes

  Scenario: Categorizar a mis fans por grupos
    Given que estoy en la <pagina de categorizacion de fans>
    When categorizo a mis <fans por grupos>
    And utilizo filtros como <tiempo de interaccion><numero de likes>
    And el sistema muestra un <mensaje exitoso>
    Then debería ver mis <fans categorizados>

    Examples: datos de entrada
    | tiempo de interaccion | numero de likes |
    | recientes             | 10              |
    | antiguos              | 50              |

    Examples: datos de salida
    | mensaje exitoso|
    | Fanes categorizados exitosamente  |

  Scenario: Listar a mis seguidores
    Given que estoy en la <pagina de listado de seguidores>
    When listo a mis <seguidores>
    And los filtro por <antiguos><recientes>
    And el sistema muestra un <mensaje exitoso>
    Then debería ver <mi lista de seguidores>
    
    Examples: datos de entrada
    | antiguos | recientes |
    | 10       | 50        |

    Examples: datos de salida
    | mensaje exitoso|
    | Seguidores listados exitosamente  |    

  Scenario: Editar el listado de mis seguidores
    Given que estoy en la <pagina de edicion de seguidores>
    When edito mi <lista de seguidores>
    And agrego o elimino <nuevos seguidores>
    And el sistema muestra un <mensaje exitoso>
    Then debería ver <mi lista de seguidores actualizada>
    
    Examples: datos de entrada
    | nuevos seguidores |
    | 2                 |
    
    Examples: datos de salida
    | mensaje exitoso|
    | Se han agregado 2 seguidores al listado.  |
    
Feature: Gestión de eventos
  Como manager quiero poder gestionar las actuaciones y programaciones de mi evento en la plataforma

  Scenario: Crear eventos
    Given que estoy en la <pagina de creacion de eventos>
    When <creo un evento>
    And <agrego detalles del evento> como <fecha><hora><lugar>
    And el sistema muestra un <mensaje exitoso>
    Then debería ver mi <evento creado>

    Examples: datos de entrada
    | fecha | hora | lugar |
    | hoy   | 8 pm | casa  |

    Examples: datos de salida
    | mensaje exitoso|
    | Evento creado exitosamente  |

  Scenario: Eliminar eventos
    Given que estoy en la <pagina de eliminacion de eventos>
    When <elimino un evento>
    And el sistema muestra un <mensaje de confirmacion>
    And el sistema muestra un <mensaje exitoso>
    Then debería ver mi <evento eliminado>

    Examples: datos de entrada
    | mensaje de confirmacion|
    | ¿Estas seguro de eliminar este evento? |  

    Examples: datos de salida
    | mensaje exitoso|
    | Evento eliminado exitosamente  |

  Scenario: Filtrar listado de eventos
    Given que estoy en la <pagina de listado de eventos>
    When filtro mi <listado de eventos>
    And busco por <palabra clave>
    And el sistema muestra un <mensaje exitoso>
    Then debería ver mi <listado de eventos filtrado>

    Examples: datos de entrada
    | palabra clave |
    | futbol        |

    Examples: datos de salida
    | mensaje exitoso|
    | Listado filtrado exitosamente  |

  Scenario: Notificar las confirmaciones de los artistas
    Given que estoy en la <pagina de notificacion de confirmaciones>
    When notifico las <confirmaciones de los artistas>
    Then debería ver las <confirmaciones de los artistas notificadas>
   
    Examples: datos de entrada
    | confirmaciones de los artistas |
    | confirmados                     |

  Scenario: Cerrar confirmaciones cuando estén a tope
    Given que estoy en la <pagina de cierre de confirmaciones>
    When <cierro las confirmaciones>
    Then debería ver las <confirmaciones cerradas>

    Examples: datos de entrada
    | cerrar las confirmaciones |
    | cerrar confirmaciones     |

Feature: Registro de managers
  Como manager 
  quiero estar registrado en la app 
  para poder dar apoyo a nuevos talentos

  Scenario: Registrar managers
    Given que estoy en la <pagina de registro de managers>
    When registro mi <informacion personal>
    And completo mis <datos laborales><tipo de contrato><informacion de experiencia><informacion de intereses>
    And el sistema muestra <mensaje de exito>
    Then debería ver <mi perfil de manager>
    
    Examples: datos de entrada
    | datos laborales | tipo de contrato | informacion de experiencia | informacion de intereses|
    | manager         | contrato a tiempo completo | 5 años en el sector | pop      |
    
    Examples: datos de salida
    |  mensaje de exito     |
    | Manager creado con exito   |

  Scenario: Editar información del perfil managers
    Given que estoy en la <pagina de perfil de manager>
    When edito mi <informacion personal> como <nombre><apellido><contrasenia><correo electronico>
    And el sistema muestra <mensaje de exito>
    Then debería ver mi <perfil de manager actualizado>

    Examples: datos de entrada
    | nombre        | apellido       | contrasenia          | correo electronico             |
    | jose          | perez          | joseperez123         | joseperez123@gmail.com         |

    Examples: datos de salida
    |  mensaje de exito     |
    | Manager actualizado con exito   |

  Scenario: Eliminar perfil del manager
    Given que estoy en la <pagina de perfil de manager>
    When elimino <mi perfil de manager>
    And el sistema muestra un <mensaje de confirmacion>
    And el sistema muestra <mensaje de exito>
    Then debería ver la <pagina de inicio>

    Examples: datos de entrada
    | mensaje de confirmacion      |
    | ¿Estas seguro de eliminar su perfil? |

    Examples: datos de salida
    |  mensaje de exito     |
    | cuenta eliminado con exito   |

Feature: Revisión de materiales subidos
  Como manager 
  quiero poder revisar los materiales subidos por los nuevos artistas 
  para observar el talento que poseen

  Scenario: Recibir notificaciones del contenido de nuevos artistas
    Given que estoy en la <pagina de notificacion de contenido>
    When recibo notificaciones del <contenido de nuevos artistas>
    Then debería ver las <notificaciones del contenido de nuevos artistas>

  Scenario: Filtrar por categoría y género
    Given que estoy en la <pagina de filtrado de artistas>
    When filtro por <categoria><genero>
    And el sistema muestra un <mensaje de exito>
    Then debería ver los <artistas filtrados>
    
    Examples: datos de entrada
    | categoria   | genero            |
    | rock        | rock              |
    
    Examples: datos de salida
    |  mensaje de exito     |
    | Artista(s) encontrado(s) con exito   |
    
  Scenario: Enviar reuniones para una audición
    Given que estoy en la <pagina de envio de reuniones>
    When envío <reuniones para una audicion>    
    And el sistema muestra un <mensaje de exito>
    Then debería ver las <reuniones enviadas>

    Examples: datos de entrada
    | reuniones para una audicion       |
    | reunión para audición de rock     |

    Examples: datos de salida
    |  mensaje de exito     |
    | Reunion(es) enviada(s) con exito   |

Feature: Visualización de datos y estadísticas
  Como manager 
  quiero poder vizualizar los datos y estadisticas de cada artista 
  para una buena gestión

  Scenario: Visualizar el número de reproducciones de la canción
    Given que estoy en la <pagina de visualizacion de datos y estadisticas>
    When visualizo el <numero de reproducciones de la cancion>
    And el sistema muestra un <mensaje de exito>
    Then debería ver el <numero de reproducciones de la cancion>

    Examples: datos de entrada
    | numero de reproducciones de la cancion |
    | 10                                      |

    Examples: datos de salida
    |  mensaje de exito     |
    | Numero de reproducciones actualizado con exito   |

  Scenario: Visualizar la cantidad de seguidores y artistas
    Given que estoy en la <pagina de visualizacion de datos y estadisticas>
    When visualizo la <cantidad de seguidores y artistas>
    And el sistema muestra un <mensaje de exito>
    Then debería ver la <cantidad de seguidores y artistas>

    Examples: datos de entrada
    | cantidad de seguidores y artistas |
    | 25                                |

    Examples: datos de salida
    |  mensaje de exito     |
    | Cantidad de seguidores y artistas actualizada con exito   |

  Scenario: Recibir alertas cuando las estadísticas bajen
    Given que estoy en la <pagina de alertas de estadisticas>
    When recibo <alertas> cuando las estadísticas bajen
    And el sistema muestra un <mensaje de exito>
    Then debería ver las <alertas de estadisticas>

    Examples: datos de entrada
    | alertas|
    | 10     |
    
    Examples: datos de salida
    |  mensaje de exito     |
    | Alertas de estadisticas recibidas con exito   |
