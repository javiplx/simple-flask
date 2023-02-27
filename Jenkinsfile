pipeline {
  agent any
  stages {
    stage('Examine kubernetes') {
      steps {
        script {
          withKubeConfig(credentialsId: 'kubeconfig') {
            sh 'curl -s -LO https://dl.k8s.io/release/v1.26.1/bin/linux/amd64/kubectl'
            sh 'chmod u+x ./kubectl'
            sh './kubectl get -A all'
          }
        }
      }
    }
  }
}
