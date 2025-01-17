# Usar la última imagen de Node.js como base
FROM node:latest

# Configurar el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos del proyecto al contenedor
COPY . /app/

# Instalar las dependencias del proyecto
RUN npm install

# Exponer el puerto donde se ejecutará tu aplicación Node.js
EXPOSE 8001

# Comando para ejecutar la aplicación Node.js
CMD ["node", "app.js"]
