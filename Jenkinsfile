pipeline {
  agent any

  stages {
    stage('NPM Install Phase') {
      steps { sh 'npm i' }
    }

    stage('Pre-Build') {
      parallel {
        stage('Running Angular Lint') {
            steps { sh 'npm run l' }
        }
        stage('Running Unit Tests') {
            steps { sh 'npm run t' }
        }
      }
    }

    stage('Building and Dockerizing') {
      steps { sh 'npm run build:dockerize' }
    }
  }
}