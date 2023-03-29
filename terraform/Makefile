SHELL:=/bin/sh
AWS_REGION=us-east-1
BUCKET=calc-app-bucket

bucket:
  # Since we are using the default region no need to pass the region and locationconstraint flags i.e aws s3api create-bucket --bucket ${BUCKET} --region ${AWS_REGION} --create-bucket-configuration LocationConstraint=${AWS_REGION}
	aws s3api create-bucket --bucket ${BUCKET}

init:
	terraform init
	terraform import 'aws_s3_bucket.tfstate_bucket' ${BUCKET}

plan:
	terraform plan -out=calcapp.tfplan

apply:
	terraform apply calcapp.tfplan