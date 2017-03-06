# D.C.P.P.
##Docker Compose Pet Project
This is an "excuse project" I used to learn how to use Docker Compose and play with decoupled services/containers.

####Run it
- Download and install [docker](https://www.docker.com/get-docker)
- Run `docker-compose up -d --build` to build and start all the services in Background
- Get your docker-machine ip with `$ docker-machine ip`, mine is `192.168.99.100`
- The application starts a HTTP server on {your docker-machine ip}:8080, so mine starts at `http://192.168.99.100:8080`
 
####Behind the scenes
There are 5 containers (_db_, _php_, _webserver_, _cli_ and _source_data_), each of them handles its own decoupled service.

 
