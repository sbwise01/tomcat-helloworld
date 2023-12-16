# tomcat-helloworld
A sample Tomcat Hello World application

## Build instructions
1. `docker build -t sbwise/tomcat-helloworld:1.0.0 .`
1. `docker push sbwise/tomcat-helloworld:1.0.0`

## Testing
`docker run -d --rm --name helloworld -p 8888:8080 sbwise/tomcat-helloworld:1.0.0`
`curl -D - http://localhost:8888/helloworld/`
`docker stop helloworld`
