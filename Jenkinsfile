pipeline {
    agent any

    environment {
        AWS_REGION = "ap-south-1"
        ECR_REPO = "capstone-app"
        AWS_ACCOUNT_ID = "123456789012"   // replace with your real AWS account ID
        IMAGE_TAG = "latest"
        ECR_URL = "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com"
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/arshitchoubey18/capstone-project.git'
            }
        }

        stage('Build') {
            steps {
                sh 'echo building application'
            }
        }

        stage('Test') {
            steps {
                sh 'echo running unit tests'
            }
        }

        stage('Docker Build') {
            steps {
                sh """
                docker build -t ${ECR_REPO}:${IMAGE_TAG} .
                """
            }
        }

        stage('Login to ECR') {
            steps {
                sh """
                aws ecr get-login-password --region ${AWS_REGION} | \
                docker login --username AWS --password-stdin ${ECR_URL}
                """
            }
        }

        stage('Tag & Push to ECR') {
            steps {
                sh """
                docker tag ${ECR_REPO}:${IMAGE_TAG} ${ECR_URL}/${ECR_REPO}:${IMAGE_TAG}
                docker push ${ECR_URL}/${ECR_REPO}:${IMAGE_TAG}
                """
            }
        }

        stage('Deploy to EKS') {
            steps {
                sh """
                aws eks update-kubeconfig --name capstone-eks --region ${AWS_REGION}

                kubectl create namespace capstone --dry-run=client -o yaml | kubectl apply -f -

                helm upgrade --install capstone ./helm-chart \
                -n capstone \
                --wait \
                --atomic \
                --timeout 5m
                """
            }
        }
    }
}