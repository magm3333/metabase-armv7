# Docker Metabase ARMv7

**Que es Metabase?**
La definción que da la misma gente que desarrolla el producto es excelente!: 
"Metabase is the easy, open source way for everyone in your company to ask questions and learn from data."
Es un software con interface web escrito en java que permite crear fuentes de datos basados en motores relacionales y hacerles preguntas, de las respuestas se encarga Metabase!
[Web de Metabase](https://www.metabase.com/)

**Crear y ejecutar contenedor**
```
docker run --name mimetabase -d -p 3000:3000 magm3333/metabase-armv7
```
Puedes reutilizar tus bases de datos ya existentes mapeando volúmenes (*-v /lugar/de/la/base/de/datos:/app/database*), por ejemplo:
```
docker run --name mimetabase -d -p 3000:3000 -v /lugar/de/la/base/de/datos:/app/database magm3333/metabase-armv7
```

**Crear la imagen**
Una vez clonado este repositorio deberá:
- Descargar la versión versión de metabase que desee empaquetar, para ello se dispone de un script llamado *downloadmetabase.sh*
- Luego, crear la imagen:

```
docker build -t metabase .
```

**Crear un contenedor**
```
docker run --name mimetabase -d -p 3000:3000 metabase
```
Puedes ver el log de tu contenedor de la siguiente manera:
```
docker logs mimetabase
```

**Atención:** *Tienes que tener en cuenta que la primera vez que se ejecuta, puede tardar un buen tiempo en responder, ya que iniciacilza las bases de datos.*

Finalmente podrás disfrutar de tu Metabase accediendo a la url: *http://localhost:3000* 

**Aclaración:** *Esta imagen ha sido probada en una Raspberry PI 4 con 2 y con 4 GB de RAM*

**Agradecimientos**
- A mi queridx amigx [Darío Bernabeu](http://troyanx.com/Hefesto/bernabeu_dario.html), compañerx de aventuras, aprendizajes y demás cosas importantes de la vida.
- Esta imagen está basada en *adoptopenjdk/openjdk11:armv7l-ubuntu-jdk-11.0.7_10*


**TODO**
- Ejemplo de cambio de Time Zone


***

**Licencia**

Creado por Mariano Alberto García Mattío en 2020 (Twitter [@magm3333](https://twitter.com/magm3333))

Licensed under the Apache License, Version 2.0

