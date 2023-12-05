# Endpoint: `GET /user/{id}/product`

Permite obtener información sobre los libros relacionados a un tema mediante su
identificador único.

## Parámetros de URL
- `{id}` (obligatorio): Identificador único del tema que se desea recuperar.

## Ejemplo de Solicitud
```http
GET /product/1/user
```

## Respuesta Exitosa (Código 200 OK)
```json
[
  {
    "id_producto": 1,
    "titulo": "Manzana"
  },
  {
    "id_producto": 2,
    "titulo": "Zanahorias"
  }
]
```

## Respuestas de Errores Posibles
- Código 404 Not Found:

  ```json
  {
    "errno": 404,
    "error": "not_found",
    "error_description": "No se encontraron libros asociados con el tema {id}."
  }
  ```

- Código 500 Internal Server Error:
  ```json
  {
    "errno": 500,
    "error": "internal_error",
    "error_description": "Ocurrió un problema para procesar la solicitud"
  }
  ``` 

## Notas Adicionales

- Asegurate de incluir un ID válido en la solicitud para obtener la información
  sobre los libros de un tema en específico.