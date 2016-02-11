## Simple web server

This is a web server that listens on port 8080 and always returns
"hello", no matter what URL or HTTP method you address it with.  

### The code

This is the entirety of the code:

```
package main

import "net/http"

func handler(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("hello"))
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}
```

### Build static binaries for Mac and Linux

```
$ CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -o server-osx
$ CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o server-linux
```

### Run locally to get familiar with it

```
$ ./server-osx 
```

Hit it with curl

```
$ curl http://localhost:8080/foo
hello
```

### Containerize it 

Adjust your Dockerhub account then

```
$ docker build -t ae6rt/gohelloweb:latest .
```

