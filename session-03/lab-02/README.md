# Terraform Hands-On

This exercise defines how to use terraform init command while migrating a backend to a remote S3 (MinIO). You can follow the guidance in order to do the exercise. Each step introduces a new aspect of this command and therefore, you will be able to find out about the differences of each flag or use case.

## Step 1
Now we will be trying to migrate our backend to MinIO S3 in order to protect our data from unwanted or simultanious changes.
Change the local backend to use MinIO as its main backend. A MinIO has already been setup with provided credentials. The credenares will be announced in GP. 


Please do not hard-code or expose these access/secret keys in your current .tf file. Use your own name as the key.

* api_address = "http://172.16.78.139:9000"
* access_key = ""
* secret_key = ""
* bucket = "dx-terraform"


Then, try to migrate the backend as well as state file.

* quest 1: How can we pass/define our backend args?

## Step 2
Try to change a value in configuration and run the terraform plan again, this time with its exit code flag.

* quest 1: How can you specify a condition in which defines if a plan is successful and includes some changes?

## Step 3
Installing providers needs a connection to terraform's registry. What if you want to use your own filesystem's local providers? 
Try to mirror "local_file" binary in your filesystem and use it in your .tf file. Take a look at "provider_installation" block.

Use this structure to create your local files:
```
.terraform.d
└── plugins
    └── registry.terraform.io (optional)
        └── hashicorp
            └── http
                └── 3.4.0
                    └── linux_amd64 (or darwin_arm64)
```