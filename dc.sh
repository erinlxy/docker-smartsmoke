#set ff=/bin/bash
cn=$2
st=$3
path=/docker/smartsmoke/
start(){
 docker-compose -f "$path"docker-compose.yml start $cn
}
stop(){
 docker-compose -f "$path"docker-compose.yml stop $cn
 echo "docker-compose -f "$path"docker-compose.yml stop"
}
down(){
 docker-compose -f "$path"docker-compose.yml down $cn
 echo "docker-compose -f "$path"docker-compose.yml down"
}
kill(){
 docker-compose -f "$path"docker-compose.yml kill $cn
 echo "docker-compose -f "$path"docker-compose.yml kill"
}
up(){
 docker-compose -f "$path"docker-compose.yml up $cn $st
}
status(){
 docker inspect --format '{{.State.Running}}' $cn
}
images(){
 docker-compose -f "$path"docker-compose.yml images $cn
}
ps(){
 docker-compose -f "$path"docker-compose.yml ps $cn
}
restart(){
 stop
 start
}
log(){
 docker logs -f --tail=300 $cn
}
usage(){
 "error"
}
case "$1" in
 "start")
 start
 ;;
 "stop")
 stop
 ;;
 "down")
 down
 ;;
 "kill")
 kill
 ;;
"up")
 up
 ;;
 "log")
 log
 ;;
 "images")
 images
 ;;
 "ps")
 ps
 ;;
 "status")
 status
 ;;
 "restart")
 restart
 ;;
 *)
 usage
 ;;
esac
