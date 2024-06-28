#1. Initialize the Terraform Project

1. Open your terminal and navigate to the project directory.
2. Run the following command to initialize the Terraform project and download the necessary providers:
   ```bash
   terraform initc-web-on-AWS
#2. Configure AWS S3 Bucket
Create an S3 bucket to host the static website.
Configure the bucket policy to make it publicly accessible.
Define index.html and error.html as the default documents.
3. Set Up CloudFront Distribution
Create a CloudFront distribution to serve content from the S3 bucket.
Set the default_root_object to point to index.html.
Integrate the SSL certificate for HTTPS.
4. Manage Domain with Route 53
Configure Route 53 to manage your custom domain.
Create DNS records to point to the CloudFront distribution.
5. Security and Access Management
Define IAM roles and policies to secure the S3 bucket and CloudFront distribution.
Implement least privilege access for IAM roles.
6. API Gateway Configuration
Configure API Gateway to handle HTTP requests.
Define necessary resources and methods in api_gateway.tf.
7. SSL Certificate Configuration
Request and validate an SSL certificate using AWS Certificate Manager (ACM).
Attach the SSL certificate to the CloudFront distribution.
8. Deployment and Testing
Apply the Terraform configuration by running:
terraform apply
Confirm the action by typing yes when prompted.
Verify the deployment by accessing your website via the custom domain.

Conclusion
This project sets up a static website hosted on AWS S3, served through CloudFront, with DNS managed by Route 53, and secured using IAM roles and SSL certificates. Follow the detailed steps above to deploy and verify your static website successfully.
