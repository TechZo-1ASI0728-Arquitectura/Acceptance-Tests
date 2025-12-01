Feature: US25 - Visualización de la Historia de la Startup

  Como usuario visitante, quiero acceder a la sección "¿Quiénes somos?" de la landing page, para conocer la historia de CambiaZo y al equipo que lo hace posible.

  Scenario: Visualizar la historia de la startup
    Given que el usuario se encuentra en la landing page de CambiaZo
    When accede a la sección "¿Quiénes somos?"
    Then verá una breve presentación sobre la startup que explica su propósito de promover el intercambio y la donación de objetos para fomentar un estilo de vida sostenible
    And verá un video introductorio que refuerza esta visión

  Scenario: Conocer al equipo de CambiaZo
    Given que el usuario se encuentra en la sección "¿Quiénes somos?" de la landing page
    When desliza el carrusel o slider que aparece a continuación del video
    Then podrá visualizar las fotos de los integrantes del equipo junto con sus nombres y los roles o puestos que ocupan dentro del proyecto
