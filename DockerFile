# Usamos Node 18 Alpine (ligero)
FROM node:18-alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos package.json y package-lock.json para instalar dependencias
COPY package*.json ./

# Instalamos las dependencias (npm)
RUN npm install

# Copiamos el resto del código
COPY . .

# Exponemos el puerto que usará el servidor (3000)
EXPOSE 3000

# Comando para arrancar el servidor
CMD ["node", "server.js"]
