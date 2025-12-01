Feature: US23 - Gestionar mis favoritos en la aplicación

  Como usuario de la aplicación, quiero poder acceder a los objetos que he guardado como favoritos, para poder visualizarlos y eliminar los que ya no me interesen.

  Scenario: Ver objetos guardados como favoritos
    Given que el usuario está en su perfil
    When selecciona la opción "Favoritos"
    Then se mostrará una lista de los objetos que ha guardado como favoritos
    And cada objeto muestra la imagen, el nombre, una descripción breve y el valor aproximado del objeto

  Scenario: Eliminar un objeto de mis favoritos
    Given que el usuario está visualizando la lista de favoritos
    When selecciona el botón de favoritos (ícono de corazón) de un objeto para eliminarlo
    Then se mostrará un popup de confirmación con el mensaje "¿Estás seguro de que deseas eliminar este objeto de tus favoritos?"
    And el usuario podrá seleccionar "Eliminar" para quitar el objeto de su lista de favoritos o "Cancelar" para cerrar el popup sin realizar ninguna acción
    And si selecciona "Eliminar", el objeto desaparecerá de la lista de favoritos después de la confirmación
