# Usar una imagen base de Nginx

FROM node:latest

# Configurar el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos de tu proyecto al contenedor
COPY . /app/

# Instalar las dependencias de Python desde el archivo requirements.txt
RUN npm install

# Exponer el puerto donde la app FastAPI estará disponible
EXPOSE 8001

# Comando para ejecutar la aplicación con Uvicorn
CMD [ "node", "app.js" ]
