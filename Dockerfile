# Utilisation d'une image de base Node.js
FROM node:20.10.0

# Créer et définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier les fichiers nécessaires (package.json et package-lock.json)
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le reste de l'application
COPY . .

# Exposer le port sur lequel l'application s'exécute
EXPOSE 3000

# Commande par défaut pour démarrer l'application
CMD ["npm", "start"]