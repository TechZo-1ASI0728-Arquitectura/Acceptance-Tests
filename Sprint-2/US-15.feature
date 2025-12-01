Feature: US15 - Gestión de intercambios

  Como usuario de la aplicación, quiero revisar el estado de los intercambios que he enviado, recibido o aceptado, para poder ver los detalles y gestionar mis transacciones de intercambio de manera eficiente.

  Scenario: Revisión de intercambios enviados
    Given que el usuario está en la sección de "Intercambios"
    When selecciona la pestaña "Enviados"
    Then verá una lista con los objetos ofrecidos y su estado
    And podrá ver más detalles al seleccionarlos

  Scenario: Revisión de intercambios recibidos
    Given que el usuario está en la sección de "Intercambios"
    When selecciona la pestaña "Recibidos"
    Then verá una lista de ofertas con detalles
    And tendrá opciones para aceptarlas o rechazarlas

  Scenario: Revisión de intercambios aceptados
    Given que el usuario está en la pestaña "Aceptados"
    When selecciona un intercambio
    Then podrá ver los detalles del intercambio
    And podrá dejar una reseña si lo desea
