# Usa una imagen ligera de NGINX como base
FROM nginx:alpine

# Elimina los archivos por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia tu archivo HTML renombrándolo a index.html para que sea la página principal
COPY dise_ador_de_carta_aiesec.html /usr/share/nginx/html/index.html

# Copia la carpeta de logos para que las imágenes se carguen correctamente
COPY logos/ /usr/share/nginx/html/logos/

# Expone el puerto 80 (Render detectará este puerto automáticamente)
EXPOSE 80

# Comando para iniciar NGINX
CMD ["nginx", "-g", "daemon off;"]
