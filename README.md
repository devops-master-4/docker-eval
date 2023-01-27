
## Comment l'installer ?
```bash
https://github.com/devops-master-4/docker-eval
cd docker-eval
cd planner/ && npm i && cd ../worker && npm i 
```

## Configuration 
Il faut utiliser les fichiers .env pour les config. Voici un example de config pour le fichier .env dans planner
```bash 
TASKS=50
```

Dans le dossier worker .env,
```bash
MULT=true
ADD=true
PORT=8080
PLANNER=http://planner:3000/
ADDRESS=worker
```

>**Note** Il s'agit des fichiers configs, il faut les modifier en fonction de votre besoin


Voici la structure dans mon répertoire: 
```bash 
├── build.sh
├── docker-composer.yml
├── package-lock.json
├── planner
│   ├── connect.sh
│   ├── DockerFile_planner
│   ├── main.js
│   ├── package.json
│   ├── package-lock.json
│   ├── readme.md
│   ├── service.yaml
│   └── yarn.lock
├── readme_luc.md
├── README.md
├── run.sh
└── worker
    ├── DockerFile_worker
    ├── main.js
    ├── package.json
    ├── package-lock.json
    └── readme.md

```

## Démarrer le serveur 
```bash
npm start # dans le dossier worker
npm start # dans le dossier planner
```

## Laner le docker : 
Vous pouvez également utiliser les docker 
```bash
chmod +x build.sh &&./build.sh chmod +x run.sh && ./run.sh
```

Ou vous pouvez utiliser également le fichier docker-composer.yml

