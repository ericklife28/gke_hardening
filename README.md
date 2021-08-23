# gke_hardening

export GOOGLE_APPLICATION_CREDENTIALS=/home/erick/Endava/DevOps/Repositories/gke_hardening/key.json


terraform plan -out=terraform.plan

terraform show -json terraform.plan  > terraform_plan.json


gcloud auth activate-service-account cluster-hardening-27@mytests-254103.iam.gserviceaccount.com --keyfile=/home/erick/Endava/DevOps/Repositories/gke_hardening/key.json