FROM nginx:1.9.9

#Creamos Carpeta dentro del contenedor a la que mapearemos los ficheros ssl
# generados en la ruta de aws ejemplo: /ect/letsencrypt/live/www.votacao.fbfagostousa.com/
RUN mkdir /etc/nginx/ssl/

COPY /fbfagostousa-frontend/ /usr/share/nginx/html

COPY default.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]

#Ejemplo ejecucion:
## docker run -p 80:80 -p 443:443 -v /ect/letsencrypt/live/www.votacao.fbfagostousa.com/:/etc/nginx/ssl/ {id_imagen_}
