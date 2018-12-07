# docker-salsah-lamps
Docker image containing LAMP and Sipi. Image published as `dhlabbasel/lamps`

## Building dhlabbasel/salsah-lamps image

1. Build: `$ docker build -t dhlabbasel/salsah-lamps:x.x.x` where `x.x.x` should be a new version tag. We start at `1.0.0`.
2. Login into docker: `docker login`. This should be necessary only once. Credentials are stored in the home folder.
3. Push image: `$docker push dhlabbasel/salsah-lamps:x.x.x`.
4. Change `docker-compose.yml` to use the new tag.
5. Commit changes and push git repository.
