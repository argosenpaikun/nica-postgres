FROM postgres:14-alpine
LABEL maintainer="Affian Onn <affianonn@hotmail.com>"
LABEL org.opencontainers.image.source=https://github.com/argosenpaikun/nica-postgres

# Copy custom configuration or SQL/init scripts if needed
# (e.g., schema setup, extensions)
COPY init.sql /docker-entrypoint-initdb.d/

# Use a volume for data persistence (recommend)
VOLUME ["/var/lib/postgresql/data"]

# Expose PostgreSQL default port
EXPOSE 5432

# Health check (optional but recommended)
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
    CMD pg_isready -U postgres || exit 1