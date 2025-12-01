Feature: US21 - Cancelar una suscripción

  Como usuario quiero poder cancelar mi suscripción en cualquier momento para no pagar mensualmente.

  Scenario: Acceso a la ventana de suscripciones
    Given que el usuario desea verificar la información del estado de su suscripción
    When se dirige a la sección de configuración desde la versión web
    Then accede a su perfil y, dentro de este, en la sección de "Detalles de perfil", encuentra una sección llamada "Mi membresía"
    And al pulsar en esta sección, puede ver los detalles de su suscripción

  Scenario: Verificación de los detalles de la suscripción
    Given que el usuario se encuentra en la ventana que muestra el estado de su suscripción
    When revisa los detalles de la suscripción
    Then podrá visualizar la fecha de renovación
    And podrá confirmar si se encuentra en un plan activo

  Scenario: Proceder a la cancelación de la suscripción
    Given que el usuario se encuentra en la ventana que muestra el estado de su suscripción
    When ha decidido no continuar con la suscripción premium de CambiaZo
    And pulsa el botón rojo "Anular suscripción" en la versión web en la sección "Mi membresía" dentro de "Detalles de perfil"
    And accede desde la versión mobile a la sección "Mi suscripción" y selecciona "Planes"
    Then la suscripción premium será cancelada, no se renovará en la siguiente fecha de pago
    And el usuario podrá cambiar a "Plan Lite", quedando en un plan gratuito sin pagos mensuales
