## README

Notes for building Docker image for use with wercker for STA521 at Duke

The Dockerfile specifies which programs and packages are installed.  Add additional packages as needed

### base image

> docker pull mavelli/rocker-bayesian

run a container:

> docker run -d -p 8787:8787 mavelli/rocker-bayesian
> docker run -i mavelli/rocker-bayesian

connect to rstudio in a webbrowser at

> localhost:8787

### build image

`> docker  build -t  predictive-modelling .`

### find docker image id

`> docker images`

### tag the image

`> docker tag [image id]  merliseclyde/predictive-modelling:latest`

`docker images`

### push

`> docker login`

`> docker push merliseclyde/predictive-modeling

### run interactively



$ docker run -it <Image ID> bash`


Testing packages:

run docker interactively

apt-get install valgrind

scp clyde@okeeffe.stat.duke.edu:.valgrindrc .
scp clyde@okeeffe.stat.duke.edu:BAS_1.4.5.tar.gz .

R CMD check --use-valgrind --as-cran BAS_1.4.5.tar.gz


R -d "valgrind 
