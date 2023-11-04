Feature: US02 - Comunicarse con la empresa y ver sus redes sociales
Como usuario
Quiero comunicarme con la empresa frente a cualquier duda o reclamo, así mismo visitar sus redes sociales 
para conocer más de la empresa

Scenario: E1: Contactar a través del formulario con GENETECH
    Given que el usuario se encuentra en la Landing page
    And se dirige a las pestañas superiores
    When de clic al botón de "contáctanos"
    Then el sistema redirecciona al usuario hacia la sección donde se encuentra el formulario "Para cualquier duda"

Scenario: E2: Completar el formulario para comunicarse con GENETECH
    Dado que el usuario se encuentra en la sección “contactanos”
    Cuando termine de completar los campos de <Nombre> <Apellido> <Correo> <Mensaje>
    Y de clic en el botón “Enviar”
    Entonces el sistema realiza él <envio de la duda al correo de GENETECH>

    Examples: INPUT
    | Nombre | Apellido | Correo | Mensaje |
    | Marco | Olivera | marcolivera@gmail.com.pe | Hola, quisiera saber como puedo ver el diagnostico de la prueba genetica |
    
    Examples: OUTPUT
    | envio de la duda al correo de GENETACH |

Scenario: E3: Acceder a las redes sociales de GENETECH
    Dado que el usuario se encuentra en la sección “contactanos”
    Cuando se despliegue para la parte inferior
    Y vea las <redes sociales de GENETECH>
    Entonces al momento de dar clic en la red social de su preferencia el sistema lo <redirecciona al sitio web correspondiente>

     Examples: INPUT
    | redes sociales de GENETECH |
    | linkedin | instagram | Youtube | Facebook | Whatsapp |
    
    Examples: OUTPUT
    | redirecciona al sitio web correspondiente |
