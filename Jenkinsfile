pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Building WAR file..."
                sh 'mvn clean package'
            }
        }

        stage('Run Unit Tests') {
            steps {
                echo 'Running JUnit Tests...'
                sh 'mvn test'
            }
        }


        stage('Deploy to DEV') {
            steps {
                echo "Deploying to DEV..."
                // Placeholder: will replace with real deploy logic
            }
        }

        stage('Approval') {
            steps {
                input message: 'Deploy to QA?', ok: 'Yes, go ahead!'
            }
        }

        stage('Deploy to QA') {
            steps {
                echo "Deploying to QA..."
                // Placeholder: will replace with real deploy logic
            }
        }
    }

    post {
        always {
            junit '**/target/surefire-reports/*.xml'
        }
    }

}
