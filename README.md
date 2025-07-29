# Gestionnaire d'Environnement Virtuel Python

Ce projet propose un script Bash simple et interactif pour automatiser la gestion d'un environnement virtuel Python. Il facilite la création, l'activation, l'installation des dépendances et la sauvegarde dans un fichier `requirements.txt`.

## 📅 Fonctionnalités

- Création automatique d'un environnement virtuel si absent
- Activation de l'environnement
- Installation facultative des dépendances depuis `requirements.txt`
- Sauvegarde des dépendances actuelles

## 📁 Prérequis

- Bash (Linux, macOS ou WSL)
- Python 3 installé

## 🚀 Utilisation

```bash
cd scripts
chmod +x setup.sh
./setup.sh
```

Suivez les instructions interactives affichées dans le terminal :

1. Création de l'environnement si nécessaire
2. Activation automatique
3. Option d'installation des dépendances
4. Option de sauvegarde des dépendances

## 📊 Structure du projet

```
.
├── setup.sh
├── requirements.txt (optionnel)
```

## 🚀 Installation et utilisation

1. Cloner le dépôt ou copier le script sur votre machine :

   ```bash
   git clone https://github.com/jNoxID/pyenv-launcher.git
   ```

## 👨‍💼 Auteurs

- Jérôme Pointreau

## 📄 Licence

Ce projet est sous licence GPL-3.0-only. Voir le fichier [LICENSE](LICENSE) pour plus d'informations.
