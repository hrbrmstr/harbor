harbor
================

[![Travis-CI Build Status](https://travis-ci.org/hrbrmstr/harbor.svg?branch=master)](https://travis-ci.org/hrbrmstr/harbor)

Tools to Manage 'Docker' Images and Containers

TODO before CRAN:

-   <strike>run</strike>
-   <strike>pull</strike>
-   <strike>exec</strike>
-   <strike>tag</strike>
-   commit
-   build
-   push
-   <strike>stop</strike>
-   <strike>ps</strike>
-   <strike>rm</strike>
-   <strike>logs</strike>
-   <strike>images</strike>

``` r
library(harbor)

docker_pull(image = "hello-world")
```

    ## Using default tag: latest
    ## latest: Pulling from library/hello-world
    ## Digest: sha256:c5515758d4c5e1e838e9cd307f6c6a0d620b5e07e6f927b07d05f6d12a1ac8d7
    ## Status: Image is up to date for hello-world:latest

``` r
res <- docker_run(image = "hello-world", capture_text = TRUE)

cat(attr(res, "output"))
```

    ## 
    ## Hello from Docker!
    ## This message shows that your installation appears to be working correctly.
    ## 
    ## To generate this message, Docker took the following steps:
    ##  1. The Docker client contacted the Docker daemon.
    ##  2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    ##  3. The Docker daemon created a new container from that image which runs the
    ##     executable that produces the output you are currently reading.
    ##  4. The Docker daemon streamed that output to the Docker client, which sent it
    ##     to your terminal.
    ## 
    ## To try something more ambitious, you can run an Ubuntu container with:
    ##  $ docker run -it ubuntu bash
    ## 
    ## Share images, automate workflows, and more with a free Docker ID:
    ##  https://cloud.docker.com/
    ## 
    ## For more examples and ideas, visit:
    ##  https://docs.docker.com/engine/userguide/

``` r
as.data.frame(containers())
```

    ##            name       image                        created status
    ## 1 harbor_9wecd6 hello-world 2017-02-23T20:24:42.572903107Z exited

``` r
container_rm(containers()[[1]])
```

    ## e764f80d0a18

``` r
containers()
```

    ## No containers found
