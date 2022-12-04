# les commandes requises pour executer le projet

executer cette commandes pour augmenter le nombre de notifier 
```bash
sudo sysctl fs.inotify.max_user_watches=100000
```
Pour builder l'image et executer le projet la premiere fois
```bash
docker-ccompose up --build
```
Autre commandes utiles : 
1- pour stopper le container 
```bash
docker-compose stop
```
2- pour lancer le container
```bash
docker-compose up
```
# http://localhost:8501
