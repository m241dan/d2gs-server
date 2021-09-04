pipeline {

   agent any

   parameters {
      string(name:"D2GS_VERSION", defaultValue:"1.13c", description:"Which version of the D2GS image to build.")
   }

   stages {
      stage('Build D2GS...') {
         steps {
            withEnv(['D2GS_VERSION=' + params.D2GS_VERSION]) {
               sh '''
                  cp /opt/d2gs/$D2GS_VERSION/* ./$D2GS_VERSION
                  cp /opt/d2gs/wine.tar.gz ./
                  docker build --build-arg version=$D2GS_VERSION -t d2gs:$D2GS_VERSION .
               '''
            }
         }
      }
   }
}
