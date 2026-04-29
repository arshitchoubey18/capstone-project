I built a production-grade DevSecOps project where I designed a complete CI/CD pipeline using Jenkins integrated with GitHub. Whenever a developer pushes code, Jenkins triggers a pipeline that builds the application, runs unit tests, performs code quality analysis using SonarQube, and scans for vulnerabilities using Trivy.”

“After successful validation, a Docker image is created and pushed to Amazon ECR. From there, we use a separate CD pipeline with manual approval to deploy the application on an Amazon EKS cluster, which I provisioned using Terraform.”

“For deployment, I used Helm charts to manage version-controlled Kubernetes releases. I also implemented monitoring using Prometheus and Grafana to track CPU, memory, and pod health in real time.”

“Additionally, I simulated production issues like pod failures and image pull errors, and performed root cause analysis using Kubernetes logs and monitoring dashboards. This helped me understand real-world incident management workflows.”
