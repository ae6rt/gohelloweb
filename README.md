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

### Run it

Start the server and access it with curl:

```
$ curl http://localhost:8080/foo
hello
```

### Containerize it 

Adjust your Dockerhub account then

```
$ docker build -t ae6rt/gohelloweb:latest .
```

