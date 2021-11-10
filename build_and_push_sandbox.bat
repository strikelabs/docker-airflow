set AWS_PROFILE=sandbox
aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 993119215551.dkr.ecr.eu-west-1.amazonaws.com
docker build -t strike-docker-airflow .
docker tag strike-docker-airflow:latest 993119215551.dkr.ecr.eu-west-1.amazonaws.com/strike-docker-airflow:latest
docker push 993119215551.dkr.ecr.eu-west-1.amazonaws.com/strike-docker-airflow:latest