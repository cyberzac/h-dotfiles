#
#mvn-docker-logs () {
#    mvn -T 1C package -Dmaven.test.skip=true -Dpmd.skip=true -Dmaven.javadoc.skip=true && docker-compose up --build -d && docker-compose logs -f $1
#}
#
