Feature: US09 - Eliminación de cuenta

  Como usuario, quiero tener la opción de eliminar permanentemente mi cuenta para evitar que mi información persista en caso de que ya no desee utilizar la aplicación.

  Scenario: Acceso a la opción de eliminación de cuenta
    Given que el usuario está registrado en la aplicación
    When desea eliminar su cuenta
    Then encontrará una opción claramente visible en la configuración de cuenta que le permita eliminarla

  Scenario: Confirmación de eliminación de cuenta
    Given que el usuario selecciona la opción de eliminar su cuenta
    When confirma su elección
    Then se mostrará un mensaje solicitando una segunda confirmación antes de proceder

  Scenario: Eliminación exitosa de la cuenta
    Given que el usuario ha confirmado la eliminación de su cuenta
    When la acción es procesada
    Then todos los datos asociados a la cuenta son eliminados permanentemente
    And la cuenta se desactiva en ambas versiones de la aplicación
