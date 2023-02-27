pipeline {
  agent any
  stages {
    stage('Examine kubernetes') {
      steps {
        script {
          docker.withRegistry('', 'dockerhub') {
          withKubeConfig(credentialsId: 'kubeconfig',
                         namespace: 'flaskapp') {
            sh 'kubectl get all'
          }
        }
      }
    }
  }
}
