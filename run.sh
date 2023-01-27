docker network create eval
docker run  --network=eval -e PORT=3000   -e ADDRESS=http://planner --name planner -d planner
for i in {1..10}; do docker run  --network=eval -e PORT=8080 -e WORKTYPE=mult  -e ADDRESS=http://worker$i --name worker$i -d worker; done
for i in {11..20}; do docker run  --network=eval -e PORT=8080 -e WORKTYPE=add  -e ADDRESS=http://worker$i --name worker$i -d worker; done
for i in {21..30}; do docker run  --network=eval -e PORT=8080  -e WORKTYPE=null -e ADDRESS=http://worker$i --name worker$i -d worker; done
