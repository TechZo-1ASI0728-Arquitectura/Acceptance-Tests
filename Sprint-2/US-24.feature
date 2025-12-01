Feature: US24 - Ver reseñas recibidas

  Como usuario de la aplicación, quiero poder ver las reseñas que he recibido, para tener una referencia de mi reputación en la plataforma.

  Scenario: Ver la calificación general y reseñas recibidas
    Given que el usuario está en su perfil
    When selecciona la opción "Mis Reseñas"
    Then se mostrará el número total de reseñas recibidas
    And se mostrará una lista de reseñas con el nombre del usuario que dejó la reseña y el comentario correspondiente
