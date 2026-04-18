# DEFINE ALL YOUR VARIABLES HERE

instance_type = "m7i-flex.large"
ami           = "ami-0ec10929233384c7f"  # Ubuntu 24.04 LTS (HVM) 64-bit x86
key_name      = "grad26"                    # Replace with your key-name without .pem extension
volume_size   = 30
region_name   = "us-east-1"
server_name   = "JENKINS-SERVER"

# Note:
# a. First create a pem-key manually from the AWS console
# b. Copy it in the same directory as your terraform code