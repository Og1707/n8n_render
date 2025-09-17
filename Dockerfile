FROM docker.n8n.io/n8nio/n8n:latest

# Copiamos certificados locales a la ruta esperada
COPY ./pki /opt/custom-certificates

# Ajustamos permisos para el usuario de n8n (id 1000)
USER root
RUN chown -R 1000:1000 /opt/custom-certificates
USER 1000

# Exponer puerto (Render lo detecta)
EXPOSE 5678
