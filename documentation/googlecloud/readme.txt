directories of interest on google cloud

dntrply@wordpress1-wordpress:/opt/c2d$
/opt/c2d
/var/www/html


Accessing instance from putty:
Review - https://cloud.google.com/sdk/gcloud/ and install gcloud on your computer
In my case - let's say I am logged into the home laptop as user laptop_user
And let's say the GCE instance was created logged into the Google Cloud platform as user google_cloud_user


Once gcloud is installed (in my case at C:\Users\laptop_user\AppData\Local\Google\Cloud SDK\google-cloud-sdk),
Launch Google Cloud SDK Shell from the Computer start
Run through the initialization
From https://cloud.google.com/compute/docs/instances/connecting-to-instance#standardssh
first connect using the command
gcloud compute ssh example-instance

this however - logs into the instance as the user laptop_user

instead use
gcloud compute ssh google_cloud_user@example-instance
this logs in as the user google_cloud_user (same as when connecting from the Google Cloud Platform Console)

From the Console, click on Metadata and you seill see entries for both users google_cloud_user and laptop_user
originating from the laptop

The keys are created on the laptop at C:\Users\laptop-user\.ssh
Amongst the files here are google_compute_engine.ppk

launch putty and set up Connection --> SSH --> Auth and set this up under "Private key file for authentication:"

You will now be logged in either as the google_cloud_user or laptop_user


To set up putty itself:


