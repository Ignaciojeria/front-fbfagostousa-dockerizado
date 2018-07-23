FROM twalter/openshift-nginx

COPY /fbfagostousa-frontend/ /usr/share/nginx/html

#COPY ./index.css /usr/share/nginx/html

EXPOSE 8081

CMD ["nginx","-g","daemon off;"]

###  USO
# A) $docker build . -t curriculum:latest
# B) $ docker run -p 8081:8081 {idImagen}