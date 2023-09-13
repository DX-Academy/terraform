# Terraform Hands-On

This exercise defines how to use terraform commands for isolation amongst terraform states. You can follow the guidance in order to do the exercise. Each step introduces a new aspect of this command and therefore, you will be able to find out about the differences of each flag or use case.

## Step 1
We can use different workspaces in order to deploy the same configuration on different environments. 
Create a simple resource type of "local_file" with arbitrary content and deploy it on 2 workspaces other than default.

* staging
* production

* quest 1: Define if state file's content is staging or production.
* quest 2: Change the backend to S3 and repeat the steps to create two workspaces.
* quest 3: What are pros and cons of such an approach? Are there any better solutions for isolations?

## Step 2
Now try to use another approach you discussed as the isolation solution between states explained in previuos step.
Create necessary directories and apply it on your local. You can use previously-made resources.


* quest 1: How can we apply a DRY while trying to apply the changes via Terraform in this structure?
* quest 2: Compare this approach with prevoius one.

## Step 3
Try to apply all changes you make to our readily-available configurations all at once. You can use the new tool called [Terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/quick-start/) for this purpose.

* quest 1: How can we implement the "apply" all at once without a third-party tool? Try to implement it that way using current/new resources.


