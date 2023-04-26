# Google Cloud Platform

[Console](https://console.cloud.google.com/)

Most command provide 'equivalent code' for configuring via shell (gcloud) or as code(rest) or config(terraform)

Gcloud - `gcloud init`

gsutil - include with gcloud `gsutil`

Terraform - config as code
  Backend - make a bucket, `gsutil mb gs://<bucket>`

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

ephemeral environment
- only one at a time, shared in tabs, windows, from the shell
- 5 gb storage
- includes gcloud / gsutil

from the web - "activate cloud shell"

command line: `gcloud cloud-shell ssh`

## Instance

from the console https://console.cloud.google.com/compute/instances

`gcloud compute instances create`

terraform => `gcloud beta --project=$PROJECT resource-config bulk-export --resource-format=terraform >> export.tf`

connect to instance - `gcloud compute ssh test`

<!-- TODO - oslogin -->