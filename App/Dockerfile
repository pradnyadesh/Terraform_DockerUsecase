# Start from the official Nginx image
FROM nginx:alpine

# Copy a custom index.html
COPY index.html /usr/share/nginx/html/index.html

# Install curl to run healthcheck
RUN apk add --no-cache curl

# Healthcheck: Nginx must return HTTP 200
HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
CMD curl -f http://localhost:80 || exit 1

# Expose port 80
EXPOSE 80
