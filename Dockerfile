FROM twalter/openshift-nginx

#Copiando el fichero de configuración Custom
ADD conf.d/default.conf /etc/nginx/conf.d/default.conf

#Copiar dist 1
COPY /fbfagostousa-frontend/ /usr/share/nginx/html_pt

#copiar dist 2, 3...

EXPOSE 8081

CMD ["nginx","-g","daemon off;"]

###  USO
# A) $docker build . -t curriculum:latest
# B) $ docker run -p 80:8081 {idImagen}