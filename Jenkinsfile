pipeline {

    agent any
    
    environment {
        PASS = credentials('registry_pass')
    }

    stages {

        stage('Build') {
            steps {
                sh '''
                    ./scripts/build.sh
                '''
            }
        }

        stage('Test') {
            steps {
                sh './scripts/test.sh'
            }
        }

        stage('Push') {
            steps {
                sh "./scripts/push.sh ${JOB_NAME} ${BUILD_ID} ${PASS}"
            }
        }

        stage('Deploy') {
            steps {
                sh "./scripts/deploy.sh ${JOB_NAME} ${BUILD_ID} ${PASS}"
            }
        }
    }
}
