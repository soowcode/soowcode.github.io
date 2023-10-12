
# Docker Registry

## Introduction

Ce tutoriel vous guidera à travers le processus de mise en place d'un service Docker Registry et d'une interface utilisateur pour gérer vos images Docker. Nous utiliserons Docker Compose pour simplifier le déploiement. Le Docker Registry est un service de stockage d'images Docker, tandis que l'interface utilisateur offre une manière conviviale de visualiser et gérer ces images.

### Prérequis

- Docker doit être installé sur votre système.
- Des connaissances de base sur Docker et Docker Compose sont nécessaires.

## Fonctionnement

### 1. **Créez un Fichier Docker Compose**

Créez un fichier nommé `docker-compose.yml` et copiez le contenu suivant :

```yaml
version: '3'
services:
  registry:
    image: registry:2
    ports:
      - 5000:5000
    restart: always
    volumes:
      - ./registry-data:/var/lib/registry

  registry-ui:
    image: konradkleine/docker-registry-frontend:v2
    ports:
      - 8080:80
    environment:
      - ENV_DOCKER_REGISTRY_HOST=registry
      - ENV_DOCKER_REGISTRY_PORT=5000
```

Ce fichier Compose définit deux services : `registry` pour le Docker Registry et `registry-ui` pour l'interface utilisateur.

### 2. **Créez un Répertoire pour les Données du Registry**

Créez un répertoire nommé `registry-data` dans le même emplacement que votre fichier `docker-compose.yml`. Ce répertoire stockera les données de votre Docker Registry.

```bash
mkdir registry-data
```

### 3. **Démarrez les Services**

Exécutez la commande suivante dans le répertoire où se trouve votre fichier `docker-compose.yml` :

```bash
docker-compose up -d
```

Cette commande démarre le Docker Registry et l'interface utilisateur en mode détaché, leur permettant de s'exécuter en arrière-plan.

### 4. **Accédez à l'Interface Utilisateur du Docker Registry**

Ouvrez votre navigateur web et accédez à `http://localhost:8080`. Vous devriez voir l'interface utilisateur du Docker Registry, où vous pouvez gérer vos images Docker visuellement.

### 5. **Ajoutez et Récupérez des Images**

Pour utiliser votre Docker Registry, vous pouvez ajouter des images et les récupérer. Voici quelques commandes de base :

**Ajoutez une image :**
```bash
docker tag alpine:3.18.4 localhost:5000/mon_alpine:v3.18.4
docker push localhost:5000/mon_alpine:v3.18.4
```

**Récupérez une image :**
```bash
docker pull localhost:5000/mon_alpine:v3.18.4
```

Remplacez `alpine:v3.18.4` par le nom et le tag de votre image Docker locale, et `mon_alpine:v3.18.4` par le nom et le tag souhaités pour votre registry.

## Conclusion

Félicitations ! Vous avez réussi à mettre en place un service Docker Registry et une interface utilisateur pour gérer vos images Docker. Vous pouvez désormais stocker et gérer vos images Docker en toute sécurité en utilisant ce registre privé.

N'hésitez pas à personnaliser davantage les configurations, comme l'ajout de SSL pour la sécurité ou la configuration de l'authentification pour votre registre, en fonction de votre cas d'utilisation spécifique.