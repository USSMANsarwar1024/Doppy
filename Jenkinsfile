pipeline {
    agent any
    
    options {
        skipDefaultCheckout()
    }

    tools {
        maven 'Maven3' // Make sure 'Maven3' is configured in Jenkins tools
    }

    environment {
        SONARQUBE = 'LocalSonar' // Name of SonarQube server configured in Jenkins
    }

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main', url: 'https://github.com/USSMANsarwar1024/Doppy.git'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('LocalSonar') {
                    withCredentials([string(credentialsId: 'sonar_token', variable: 'SONAR_TOKEN')]) {
                        sh 'mvn clean verify sonar:sonar -Dsonar.token=$SONAR_TOKEN'
                    }
                }
            }
        }

        stage('Unit Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Build WAR') {
            steps {
                sh 'mvn package'
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                // Linux (adjust path if you're on Windows)
                //sh 'cp target/*.war /path/to/tomcat/webapps/'
                
                // OR Windows:
                bat 'copy target\\*.war C:\\Tomcat\\apache-tomcat-9.0.98\\webapps'
            }
        }
    }

    post {
        always {
            junit '**/target/surefire-reports/*.xml'
        }
    }
}
