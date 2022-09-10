pipeline {
  agent any

  stages {
    stage('NPM Install Phase') {
      steps { sh 'npm i' }
    }

    stage('Pre-Build') {
      parallel {
        stage('Running Angular Lint') {
            steps { sh 'npm run lint' }
        }
      }
    }

    stage('Building and Dockerizing') {
      steps { sh 'npm run build' }
    }
  }
}
