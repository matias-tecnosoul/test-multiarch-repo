# test-multiarch-repo
Docker Multi-arch container with GitHub Actions
# Test Multi-arch Container

Imagen de prueba para demostrar construcción multi-arquitectura con Docker Buildx y GitHub Actions.

## Arquitecturas soportadas

- `linux/amd64`
- `linux/arm64`

## Uso

```bash
# Ejecutar en la arquitectura por defecto
docker run --rm ghcr.io/matias-tecnosoul/test-multiarch-repo/test-multiarch:latest

# Ejecutar en arquitectura específica
docker run --rm --platform linux/amd64 ghcr.io/matias-tecnosoul/test-multiarch-repo/test-multiarch:latest
docker run --rm --platform linux/arm64 ghcr.io/matias-tecnosoul/test-multiarch-repo/test-multiarch:latest
```

## Pipeline

El pipeline de GitHub Actions automáticamente:

1. Configura QEMU para emulación multi-arch
2. Configura Docker Buildx
3. Construye la imagen para amd64 y arm64
4. Publica en GitHub Container Registry (ghcr.io)
5. Verifica que ambas arquitecturas funcionan

## Verificación local

```bash
# Inspeccionar manifiestos
docker buildx imagetools inspect ghcr.io/matias-tecnosoul/test-multiarch-repo/test-multiarch:latest

# Verificar arquitecturas disponibles
docker manifest inspect ghcr.io/matias-tecnosoul/test-multiarch-repo/test-multiarch:latest
```