pipeline {

   agent any

   stages {
      stage('Build D2GS: 1.13c') {
         steps {
            sh '''
               cp /opt/d2gs/1.13c/* ./1.13c
               cp /opt/d2gs/wine.tar.gz ./
               docker build --build-arg version=1.13c -t d2gs:1.13c .
            '''
         }
      }
   }
}
