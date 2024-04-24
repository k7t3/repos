docker build -f Dockerfile -t repos-test .
docker run --name repos-test -dp 127.0.0.1:4000:4000 repos-test