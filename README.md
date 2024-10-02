# SQL DevTalles

Backup de las sentencias SQL escritas a lo largo del curso [SQL de cero: Tu guía práctica con PostgreSQL](https://cursos.devtalles.com/courses/sql-con-postgres) de DevTalles

## Nomenclatura

Los archivos siguen la nomenclatura `X. Y. <Nombre descriptivo>` donde
* X = Sección del curso
* Y = indice autoincremental. Si Y = 0 el contenido trendrá las sentencias necesarias para preparar la BBDD para la sección actual
*  + Nombre decriptivo de las sentencias que contiene el archivo
 
Podrás encontrar a lo largo del código comentario explicativos del mismo.

## Instalaciones recomendadas

* [Docker Desktop](https://www.docker.com/get-started)

Descargar imágenes de Docker

```
docker pull postgres:15.3
docker pull dpage/pgadmin4
```
## Build

Para levantar los contenedores usaremos
```
docker compose up -d
```

Para bajarlos
```
docker compose down
```


## Utilidades
* [Hoja de atajos](https://devtalles.com/files/sql/postgres-cheatsheet.pdf?)
