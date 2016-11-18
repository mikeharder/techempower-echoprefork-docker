# techempower-echoprefork-docker

## Server
```
git clone https://github.com/TechEmpower/FrameworkBenchmarks
cd FrameworkBenchmarks/frameworks/Go/echo
git submodule add https://github.com/mikeharder/techempower-echoprefork-docker
docker build -t echoprefork -f techempower-echoprefork-docker/Dockerfile .
docker run -it --rm -p 8080:8080 -e DBHOST=db-name-or-ip echoprefork
```

## Client
```
wrk -c 256 -t 32 -d 10 http://server-name-or-ip:8080/fortunes
```
