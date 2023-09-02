# Terraform Hands-On

This exercise defines how to use terraform commands. You can follow the guidance in order to do the exercise. Each step introduces a new aspect of this command and therefore, you will be able to find out about the differences of each flag or use case.

## Step 1
We can use different workspaces in order to deploy the same configuration on different environments. 
Create a simple resource type of "local_file" with arbitrary content and deploy it on 2 workspaces other than default.

* staging
* production

* quest 1: Define if state file's content is staging or production.
* quest 2: Change the backend to S3 and repeat the steps to create two workspaces.