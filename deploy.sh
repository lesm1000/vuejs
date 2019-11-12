#!/bin/bash

buildRoot="/home/pi/vuejs"
buildResultRoot="/home/pi/vuejs/build/libs"


cd $buildRoot

ls -al

gradle build -x test

if [ -e $buildResultRoot/vuejs-0.0.1-SNAPSHOT.war ]
then
  mv -f  $buildResultRoot/vuejs-0.0.1-SNAPSHOT.war $buildResultRoot/ROOT.war
else
  echo "file not Exist"
fi

docker cp $buildResultRoot/ROOT.war tomcat:/usr/local/tomcat/webapps/ 

echo $?

if [ $? -eq 0 ] 
then 
 echo "도커 이동 완료"
else 
 echo "이동실패"
fi

rm -rf $buildResultRoot/ROOT.war
