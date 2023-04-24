# Spring PetClinic Sample Application built with Spring Data JDBC

# QuickStart
## Build
프로젝트를 빌드하여 JAR 파일을 만들고, Docker 이미지로 빌드하고, Docker Hub에 푸시할 수 있습니다.

### Local
프로젝트를 로컬로 빌드하려면 다음 명령을 실행합니다.


```shell
./gradle build
docker build -t syl1709/petclinic:[version] .
docker push syl1709/petclinic:[version]
```
[version]을 Docker 이미지에 사용하려는 버전으로 바꿉니다.


### Github Action
GitHub 작업을 사용하여 프로젝트를 빌드하고 Docker Hub에 푸시할 수도 있습니다.
![alt text](https://cookie-tomato-400.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fdcba20cf-0d32-4d3c-aaf4-488e64ab9086%2F%25E1%2584%2589%25E1%2585%25B3%25E1%2584%258F%25E1%2585%25B3%25E1%2584%2585%25E1%2585%25B5%25E1%2586%25AB%25E1%2584%2589%25E1%2585%25A3%25E1%2586%25BA_2023-04-24_%25E1%2584%258B%25E1%2585%25A9%25E1%2584%2592%25E1%2585%25AE_9.56.17.png?id=2cce2966-7248-418f-94fc-417580eace8a&table=block&spaceId=b3b35dfb-f3f4-4329-aa95-d9a44fd05422&width=2000&userId=&cache=v2)
버전을 기입하고, Action을 실행하면 프로젝트를 빌드하고 Docker Hub에 업로드합니다. 

## Run
프로젝트를 실행하려면 JAR 파일을 사용하거나 Gradle로 직접 실행할 수 있습니다.

### Local
JAR 파일을 사용하여 로컬에서 프로젝트를 실행하려면 다음 명령을 실행하십시오.
```shell
java -jar petclinic.jar
```
Gradle을 사용하여 프로젝트를 실행하려면 다음 명령어를 실행합니다.

```shell
./gradle bootRun
```

