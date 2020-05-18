# Azure with Terraform 

*Automating Infrastructure in Azure using Terraform scripts and ADO Pipelines*

## Single stage pipeline 

Its a single stage pipeline. Tasks are Terraform Install, Init, Validate, Plan and Apply. Manual approval is not needed for Terraform Apply. 

### Multi stage pipeline

This is a multi stage pipeline. I created two environments in Pipeline section - *Terraform_Plan* and *Terraform_Apply* 

I configured Terraform_Apply with a manual approval. So when we run this pipeline, it will need a manual approval at Terraform_Apply stage. When you hit Approve, then the pipeline will continue.

