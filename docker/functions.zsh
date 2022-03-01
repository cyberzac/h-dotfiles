servicebash() {
   id=$(docker service ps $1 -q | head -n 1)
   docker exec -it $1.1.$id /bin/bash
}

