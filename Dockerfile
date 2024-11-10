# Usa uma imagem base para Node.js
FROM node:18

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copia o arquivo de dependências (package.json)
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia todo o código da aplicação para o contêiner
COPY . .

# Expõe a porta que a aplicação vai usar
EXPOSE 3000

# Define o comando para rodar a aplicação
CMD ["npm", "start"]
 
