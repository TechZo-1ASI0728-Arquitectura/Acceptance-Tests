Feature: US22 - Visualizar el perfil de las ONG's registradas

  Como usuario de la aplicación, quiero tener la opción de ver todas las ONG's disponibles para realizar donaciones.

  Scenario: Acceso a la pestaña de ONG's
    Given que el usuario se encuentra en la pestaña principal
    When pulsa sobre la etiqueta "ONG's"
    Then se mostrarán todas las ONG's registradas dentro de la aplicación tanto en la app móvil como en la web

  Scenario: Ver el perfil de una ONG
    Given que el usuario se encuentra dentro de la pestaña "ONG's"
    When pulsa sobre el recuadro que muestra el perfil de la ONG que desea visualizar
    Then aparecerán los datos y características completas de la ONG seleccionada
    And verá nombre, imagen, descripción (misión, visión y objetivos), horario de atención, ubicación, datos de contacto, proyectos realizados y enlaces a redes sociales y página web
