Feature: TS04 - API Memberships

  Como usuario developer que configura la plataforma quiero diseñar una API que facilite la gestión de membresías de usuarios para ofrecer beneficios al usuario.

  Scenario: Diseño de la API de Membresías
    Given que el usuario developer está configurando la plataforma
    When diseña la API de Membresías para gestionar las membresías de los usuarios
    Then define los endpoints y rutas necesarias para manejar las operaciones de membresías de usuarios
    And establece los requisitos de autenticación y seguridad necesarios para proteger la información de los usuarios

  Scenario: Selección de la tecnología para la API de Membresías
    Given que el usuario developer está diseñando la API de Membresías en la aplicación
    When elige la tecnología para implementar la API REST
    Then considera los requisitos de la aplicación y las preferencias del equipo de desarrollo para tomar una decisión informada

  Scenario: Obtener información de una membresía del usuario
    Given que el endpoint "/membresías" está disponible
    When se envía una solicitud GET con el identificador de la membresía
    Then se recibe una respuesta con estado 200
    And se obtienen los datos de la membresía solicitada

  Scenario: Obtener membresía no disponible
    Given que el endpoint "/membresías" está disponible
    When se envía una solicitud GET con un identificador de membresía que no existe
    Then se recibe una respuesta con estado 404
    And se muestra un mensaje que indica "No existe una membresía con este identificador"

  Scenario: Agregar una nueva membresía
    Given que el endpoint "/membresías" está disponible
    When se envía una solicitud POST con los valores de la membresía
    Then se recibe una respuesta con estado 201
    And se incluye una membresía con un nuevo ID y los valores registrados

  Scenario: Agregar una membresía ya existente
    Given que el endpoint "/membresías" está disponible
    When se envía una solicitud POST con los datos de la membresía
    And ya existe una membresía registrada con esos datos
    Then se recibe una respuesta con estado 400
    And se muestra un mensaje que dice "Una membresía con estos datos ya existe"
