docker-compose:
services:
  backend:
   image: zono32/examen-back:latest
   container_name: backend
   ports:
     - 8001:8001

  frontend:
   image: zono32/examen-front:latest
   container_name: frontend
   depends_on: 
    - backend
   ports:
    - 8080:80

