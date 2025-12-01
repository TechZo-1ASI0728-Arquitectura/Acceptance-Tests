Feature: US04 - Cambiar Contraseña

  Como usuario registrado, quiero realizar cambios en la contraseña de mi cuenta para reforzar la seguridad de mi cuenta.

  Scenario: Acceso a la opción de cambio de contraseña
    Given que el usuario ha iniciado sesión en la aplicación (web o móvil)
    When accede a la sección de configuración de la cuenta
    Then la aplicación mostrará la opción para modificar la contraseña

  Scenario: Cambio exitoso de la contraseña
    Given que el usuario está en la página o sección de cambio de contraseña
    When ingresa su contraseña actual y la nueva contraseña dos veces
    And pulsa el botón "Cambiar Contraseña"
    Then la aplicación ejecutará el cambio de contraseña
    And mostrará un mensaje de confirmación

  Scenario: Intento de cambio de contraseña fallido
    Given que el usuario se encuentra en la sección de cambio de contraseña
    When ingresa una contraseña actual incorrecta o incompleta
    And introduce la nueva contraseña dos veces
    And pulsa el botón "Cambiar Contraseña"
    Then la aplicación mostrará un mensaje de error indicando que la contraseña actual es incorrecta
