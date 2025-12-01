Feature: US08 - Brindar reseña sobre el Intercambiador

  Como usuario intercambiador, deseo dejar una reseña sobre mi experiencia con el intercambiador para que otros usuarios puedan leer y considerar mi opinión antes de intercambiar.

  Scenario: Dejar una reseña sobre un intercambio
    Given que el usuario ha completado un intercambio
    When accede a la sección correspondiente a esa experiencia
    Then encontrará una opción para dejar una reseña sobre el otro usuario

  Scenario: Visualización de reseñas de intercambiadores
    Given que otros usuarios exploran las experiencias de intercambio
    When acceden a las reseñas dejadas por otros usuarios
    Then pueden leer y considerar las opiniones antes de iniciar un intercambio
