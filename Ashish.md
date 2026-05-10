I created separate stages in the Azure Pipeline for Terraform install, Terraform init, and Terraform validate.

The validate stage was failing because each stage/job in Azure Pipeline runs in an isolated environment. The files and provider plugins created during `terraform init` (such as the `.terraform` folder) were not available in the validate stage.

Since `terraform validate` requires an initialized working directory, it failed when run in a separate stage without running `terraform init` again.

To fix this, I placed `terraform init` and `terraform validate` in the same job/stage, or alternatively, we can use artifacts to pass the initialized files between stages. The best practice is usually to keep init and validate in the same job.
