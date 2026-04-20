@echo off
echo Reorganisation du projet PlaySphere...

:: Création du dossier racine PS5 et de son arborescence
mkdir PS5 2>nul
mkdir PS5\jeux 2>nul
mkdir PS5\media 2>nul
mkdir PS5\assets 2>nul
mkdir PS5\assets\images 2>nul
mkdir PS5\assets\sons 2>nul
mkdir PS5\assets\videos 2>nul
mkdir PS5\assets\css 2>nul
mkdir PS5\assets\js 2>nul

:: Déplacement des jeux principaux
move 4images1mot PS5\jeux\ 2>nul
move devinette PS5\jeux\ 2>nul
move echecs PS5\jeux\ 2>nul
move snake PS5\jeux\ 2>nul
move tetris PS5\jeux\ 2>nul
move quiz PS5\jeux\ 2>nul

:: Création des autres dossiers pour les jeux manquants ou à renommer
mkdir PS5\jeux\minecraft2d 2>nul
mkdir PS5\jeux\escape_road 2>nul
mkdir PS5\jeux\drive_mad 2>nul
mkdir PS5\jeux\morpion 2>nul

:: Déplacement et renommage des fichiers de jeux autonomes
move jeux_de_course.html PS5\jeux\escape_road\index.html 2>nul
move voiture_parcour.html PS5\jeux\drive_mad\index.html 2>nul

:: Déplacement de l'index et de l'image de fond
move index.html PS5\ 2>nul
move van_gogh_starry_night_night_190226_1920x1080.jpg PS5\assets\images\bg_default.jpg 2>nul

:: Déplacement des scripts et styles
move js\* PS5\assets\js\ 2>nul
move css\* PS5\assets\css\ 2>nul
move style.css PS5\assets\css\ 2>nul

:: Nettoyage
rmdir js 2>nul
rmdir css 2>nul

echo Reorganisation terminee ! Tout a ete deplace dans le dossier "PS5".
pause
