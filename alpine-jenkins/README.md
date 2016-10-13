alpine-jenkins
===


### Image name:
reangd/alpine-jenkins:latest


### Example:
```
docker run -it --rm -p 80:8080 --env="S6_LOGGING=0" reangd/alpine-jenkins:latest /bin/bash
```

And open http://127.0.0.1/jenkins/


### Base params:
* [See alpine-base](https://github.com/ReanGD/docker-alpine/blob/master/alpine-base/README.md)


### Customizing:
* `JAVA_OPTS`: (default=""): java params
* `JENKINS_OPTS`: (default="--prefix=/jenkins"): jenkins params


### Environment variables:
* `JAVA_HOME`: java home
* `JENKINS_HOME`: jenkins home


### Ports:
* `8080` - HTTP port
