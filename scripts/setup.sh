#!/bin/bash

# Nom du dossier de l'environnement virtuel
VENV_DIR="venv"

# Vérifie si venv existe déjà
if [ -d "$VENV_DIR" ]; then
  echo "✅ L'environnement virtuel '$VENV_DIR' existe déjà."
else
  echo "🚀 Création de l'environnement virtuel..."
  python3 -m venv $VENV_DIR
fi

# Activation
echo "🔧 Activation de l'environnement virtuel..."
source $VENV_DIR/bin/activate

# Demande à l'utilisateur s'il veut installer les requirements
read -p "Souhaites-tu installer les dépendances depuis requirements.txt ? (y/n) " answer
if [ "$answer" = "y" ]; then
  if [ -f "requirements.txt" ]; then
    echo "📦 Installation des dépendances..."
    pip install -r requirements.txt
  else
    echo "❌ Le fichier requirements.txt est introuvable."
  fi
else
  echo "👌 Pas d'installation automatique."
fi

# Propose de sauvegarder les dépendances actuelles
read -p "Souhaites-tu sauvegarder les dépendances actuelles dans requirements.txt ? (y/n) " save
if [ "$save" = "y" ]; then
  pip freeze > requirements.txt
  echo "📝 Fichier requirements.txt mis à jour."
fi

echo "✅ Tout est prêt ! Tu es dans le venv maintenant 🐍"
