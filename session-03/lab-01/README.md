# Terraform Hands-On

This exercise defines how to use terraform init command in distinctive use cases. You can follow the guidance in order to do the exercise. Each step introduces a new aspect of this command and therefore, you will be able to find out about the differences of each flag or use case.

## Step 1
On your local system, create a .tf file known as "special_file.tf" including resource type of "local_file" and a resource name called "transfer". Try to use proper arguments to reach a text file with these features in our next steps:

* chmod "700"
* including "Hi from {YOUR_NAME}!" as its content
* stored as a text file called "{YOUR_NAME}-dxacademy.txt"
* make the content encrypted


## Step 2
Define the terraform's backend block in your .tf file. Initialize Terraform and see what happens step by step.

* quest 1: What is the output of this command? 
* quest 2: How can we stop re-initializing our backend every time we make a change to our configuration?
* quest 3: How can we run a .tf file from another path outside of the current one?

Apply the answers to your .tf file, if necessary.


## Step 3
Now we will try to create another a data source to fetch a GitLab's project repository content via an API call. You can use terraform's "http" provider in order to achieve this. Show the response status and body's output in terminal. Use the same .tf file you have been using so far.


The API address would be <gitlab_address>/api/v4/projects/:id/repository/files/:file-path.
For instance:
<gitlab_address>/api/v4/projects/4348/repository/files/sample.txt?ref=main


Please create a personal access token with the following scope to fetch a sample repository:
api, read_api, read_repository.


* quest 1: Can we hide the real personal access token in headers (instead of a hard-coded token)? How can we load it automatically and have a default value at the same time?
* quest 2: How can we output a single variable's data in json format in terminal?
* quest 3: Can we see the actual content in json as it has been encoded?
* quest 4: How can we quickly show the content of our state or plan?


Apply the answers to your .tf file, if necessary. Show the content output in terminal.

## Step 4
You can always debug your functions or expression and ... in terraform console. Now go ahead and use it to debug the CSV file provided in this directory.

* Use the CSV file called "sample.csv"
