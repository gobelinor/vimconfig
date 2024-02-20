# Contenu

.vimrc: Mon fichier de configuration Vim principal contenant les paramètres et les mappings personnalisés.

install_plugins.sh: Un script d'installation des plugins Vim que j'utilise régulièrement. Ce script utilise Pathogen pour la gestion des plugins.

# Plugins Installés

- Pathogen: Un gestionnaire de plugins Vim qui facilite l'installation et la gestion des plugins.

- Nerdtree: Un explorateur de fichiers en arborescence pour Vim. (Ctrl + n)

- Jedi-vim: Un plugin pour l'intégration de Jedi dans Vim, offrant une assistance autocomplétion (Ctrl + Space) et une navigation dans le code Python. 

- Vim fugitive: Une interface Git pour Vim, facilitant l'utilisation de Git directement depuis l'éditeur.

- Vim sensible: Un ensemble de paramètres Vim sensibles pour une meilleure expérience utilisateur.

- Copilot: Un plugin pour Vim intégrant GitHub Copilot, offrant des suggestions de code basées sur l'IA. (Ctrl + c pour activer, ² pour passer à la suggestion suivante)

- tcomment_vim: Un plugin pour commenter/décommenter facilement le code dans Vim. ("gc" en mode Visual)

- rust.vim: Des améliorations de syntaxe et de formatage pour le langage Rust dans Vim.

# Instructions d'Utilisation

Cloner ce dépôt Git vers votre répertoire local :

    git clone https://github.com/gobelinor/vimconfig.git

Exécuter le script d'installation des plugins pour installer les plugins mentionnés :

    cd config
    chmod +x install_plugins.sh
    ./install_plugins.sh

Copier le fichier .vimrc dans votre répertoire personnel (~) ou fusionner son contenu avec votre fichier .vimrc existant.
Ouvrir Vim et profiter de la configuration personnalisée ainsi que des plugins installés !


# Raccourcis 

- Shift + u : inverse de "u", anciennement Ctrl + r 

- Ctrl + n : Ouvrir ou fermer NERDTree (explorateur de fichiers).

- Ctrl + Flèche directionnelle : Changer de fenêtre dans Vim.

- Ctrl + Shift + Flèches directionnelles : Redimensionner les fenêtres Vim.

- Ctrl + c : Activer les suggestion de Copilot 

- ² en mode insertion : Accéder à la prochaine suggestion de Copilot.
