********************************************************
Prédiction de l'année de sortie d'un
titre musical à partir d'une série d'indicateurs
********************************************************

********************************************************
SPÉCIFICATIONS TECHNIQUES
********************************************************
Ce programme est écrit dans le langage de programmation R. Pour l'utiliser,
il est nécessaire d'avoir un interpréteur R installé. (https://doc.ubuntu-fr.org/r)
Il utilise également la bibliothèque e1071.

********************************************************
UTILISATION
********************************************************
Pour utiliser ce programme, on lance R et on charge le programme avec la commande
source("yearPrediction.R")
Pour créer le modèle, on utilise la fonction :
model <- initSVM("nomFic")
Ensuite, pour tester, on importe un autre jeu de données avec la commande :
donnees <- importCSV("nomFic")
Enfin, on test avec :
test_data(model,donnees)
