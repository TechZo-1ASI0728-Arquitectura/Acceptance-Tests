Feature: US02 - Editar perfil del usuario

  Como usuario ya registrado quiero realizar modificaciones en mi perfil para asegurarme de que mi información esté siempre actualizada.

  Scenario: Acceso del usuario a "Mi perfil"
    Given que el usuario ha iniciado sesión
    When accede a la opción "Mi perfil" desde el menú principal
    Then la aplicación mostrará la página con la información del perfil

  Scenario: El usuario elige editar su perfil
    Given que el usuario está en la página "Mi perfil"
    When pulsa el botón "Editar perfil"
    Then la aplicación mostrará la interfaz para modificar los datos personales

  Scenario: Actualización exitosa de perfil
    Given que el usuario se encuentra en la sección de edición de perfil
    When introduce sus nuevos datos
    And pulsa el botón "Guardar cambios"
    Then la aplicación actualizará su información correctamente

  Scenario: Datos inválidos al editar perfil
    Given que el usuario está editando su perfil
    When ingresa información incompleta o inválida
    And pulsa el botón "Guardar cambios"
    Then la aplicación mostrará un mensaje de error
    And no guardará los datos
