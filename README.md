# Google Cloud Platform

use GCP

Gcloud - gcloud init
Console - cloud shell
Terraform - config as code
  Backend - make a bucket, gsutil mb gs://

## Project

```
PROJECT=
BILLING_ACCOUNT=
BUCKET=
gcloud projects create $PROJECT
gcloud beta billing projects link $PROJECT --billing-account=$BILLING_ACCOUNT
gcloud config set project $PROJECT
gsutil mb gs://$BUCKET
```

## Cloud Shell

from the web
command line: `gcloud cloud-shell ssh`


## Instance

console
gcloud compute instances create
terraform => `gcloud beta --project=$PROJECT resource-config bulk-export --resource-format=terraform >> export.tf`

`gcloud compute ssh test`