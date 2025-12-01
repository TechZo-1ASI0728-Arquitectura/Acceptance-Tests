Feature: US07 - Visualización de ONGs registradas

  Como usuario Donante, quiero visualizar la lista de ONGs registradas y poder filtrarlas por nombre usando el buscador, para encontrar la ONG específica en la cual me gustaría hacer mi donación.

  Scenario: Visualización por defecto de ONGs
    Given que el usuario ha accedido a la sección de ONGs registradas
    When no ha ingresado ningún término en la barra de búsqueda
    Then la aplicación mostrará por defecto una lista con la imagen de logo, nombre, tipo de organización y ubicación de cada ONG

  Scenario: Búsqueda de ONG por nombre
    Given que el usuario está en la sección de ONGs
    When escribe el nombre o parte del nombre de una ONG en la barra de búsqueda
    And confirma la búsqueda (presionando "Enter" o haciendo clic en el icono de búsqueda)
    Then la lista se actualizará mostrando únicamente las ONGs cuyo nombre coincida con el texto ingresado
