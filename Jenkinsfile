pipeline {
    agent any

    options {
        skipDefaultCheckout()
    }

    tools {
        maven 'Maven3'
    }

    environment {
        SONARQUBE = 'LocalSonar'
    }

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main', url: 'https://github.com/USSMANsarwar1024/Doppy.git'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv("${SONARQUBE}") {
                    sh 'mvn clean verify sonar:sonar'
                }
            }
        }

        stage('Build WAR') {
            steps {
                sh 'mvn package'
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                bat 'copy target\\*.war C:\\Tomcat\\apache-tomcat-9.0.98\\webapps'
            }
        }
    }
}
