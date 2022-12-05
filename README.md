# les commandes requises pour executer le projet

executer cette commandes pour augmenter le nombre de notifier 
```bash
sudo sysctl fs.inotify.max_user_watches=100000
```
Pour builder l'image et executer le projet la premiere fois
```bash
docker-compose up --build
```
# Autre commandes utiles : 
1- pour stopper le container 
```bash
docker-compose stop
```
2- pour lancer le container
```bash
docker-compose up
```
# Des commandes si vous avez telecharger le projet avant la mise à jour : 
1- Creation du projet nouvelle fois  
```bash
docker compose build --no-cache
```
2- pour lancer le container
```bash
docker-compose up
```
3- executer cette commandes pour augmenter le nombre de notifier 
```bash
sudo sysctl fs.inotify.max_user_watches=100000
```
# Lien: http://localhost:8501
