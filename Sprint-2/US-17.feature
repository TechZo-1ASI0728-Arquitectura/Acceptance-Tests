Feature: US17 - Visualizar el perfil del usuario que publique un producto

  Como usuario, me gustaría tener la capacidad de visualizar el perfil de la persona que haya publicado un intercambio, para poder obtener información detallada de su confiabilidad.

  Scenario: Acceso al perfil del usuario que publicó un producto
    Given que el usuario está viendo una publicación
    When toca o hace clic en el recuadro del autor
    Then podrá ver su nombre, tiempo en la app, intercambios exitosos y valoraciones

  Scenario: Visualización de reseñas del usuario
    Given que el usuario está en el perfil de otro usuario
    When entra a la sección "Reseñas"
    Then podrá ver todas las reseñas recibidas y datos relevantes
