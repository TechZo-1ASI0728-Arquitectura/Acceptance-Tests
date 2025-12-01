Feature: US18 - Aceptar o Rechazar un Intercambio

  Como usuario que ha recibido una oferta de intercambio, quiero poder revisar los detalles de la oferta y tomar una decisión para aceptar o rechazar el intercambio, para poder gestionar mis transacciones de manera eficiente y asegurada.

  Scenario: Revisión de una oferta pendiente
    Given que el usuario está en la sección "Intercambios"
    When selecciona una oferta pendiente
    Then verá todos los detalles de la oferta
    And verá las opciones para aceptarla o rechazarla

  Scenario: Aceptar una oferta de intercambio
    Given que el usuario está viendo una oferta de intercambio
    When presiona "Aceptar"
    Then se muestra un popup de confirmación
    And al confirmar, la oferta pasa a la sección "Aceptados"

  Scenario: Rechazar una oferta de intercambio
    Given que el usuario está viendo una oferta de intercambio
    When presiona "Rechazar"
    Then se muestra un popup con un mensaje de advertencia

  Scenario: Confirmación del rechazo de una oferta
    Given que el usuario ha presionado "Rechazar oferta"
    When confirma la acción
    Then la oferta se elimina
    And la oferta no puede recuperarse
