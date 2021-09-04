pipeline {

   agent any

   stages {
      stage('Build D2GS: 1.13c') {
         steps {
            sh '''
               docker build --build-arg version=1.13c -t d2gs:1.13c .
            '''
         }
      }
   }
}
