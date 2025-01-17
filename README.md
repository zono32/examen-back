Realizado por Joaquin Lafuente Espino

enlace a repositorios:
https://github.com/zono32/examen-back.git
Commit: e06441bc4c23a079d0b90e6aa135d93baf1ba9e7
https://github.com/zono32/examen-front.git
Commit: 86ca1f47f30abef9509e5cf8a6fd6b3c537f6712


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

