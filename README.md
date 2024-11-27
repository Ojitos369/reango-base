This app is based in 
[https://github.com/Ojitos369/reango](https://github.com/Ojitos369/reango) 
and [https://github.com/Ojitos369/base-react](https://github.com/Ojitos369/base-react)  

### Activate the environment

* VENV
```shell
python3 -m venv env
source env/bin/activate
pip install -r requirements.txt
```

* CONDA
```shell
conda create -y --name rng python=3.12
conda activate rng
pip install -r requirements.txt
```

* DOCKER
```shell
docker-compose up
```

### Install npm packages
    
```shell
cd front
npm install
```

#### Work  
you can edit react app an make the build

and run django command to migrate view

```shell
python manage.py migrate_view
```
