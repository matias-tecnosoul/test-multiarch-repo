FROM alpine:latest

# Agregar información sobre la imagen
LABEL org.opencontainers.image.source="https://github.com/matias-tecnosoul/test-multiarch-repo"
LABEL org.opencontainers.image.description="Imagen multi-arch de prueba para curso de contenedores"

# Comando que muestra la arquitectura
CMD echo "La arquitectura donde corre este contenedor es $(uname -m)"