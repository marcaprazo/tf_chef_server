#
# AWS provider specific configs
#
variable "aws_access_key" {
  description = "Your AWS key (ex. $AWS_ACCESS_KEY_ID)"
}
variable "aws_secret_key" {
  description = "Your AWS secret (ex. $AWS_SECRET_ACCESS_KEY)"
}
variable "aws_region" {
  description = "AWS Region to deploy to"
  default     = "us-west-1"
}
variable "aws_key_name" {
  description = "Name of the key pair uploaded to AWS"
}
variable "aws_private_key_file" {
  description = "Full path to your local private key"
}
variable "aws_vpc_id" {
  description = "AWS VPC id (ex. vpc-ffffffff)"
}
variable "aws_subnet_id" {
  description = "AWS Subnet id (ex. subnet-ffffffff)"
}
#variable "aws_ami_user" {
#  description = "AWS AMI default username"
#}
#variable "aws_ami_id" {
#  description = "AWS Instance ID (region dependent)"
#  default     = "ami-45844401"
#}
variable "aws_flavor" {
  description = "AWS Instance type to deploy"
  default     = "c3.xlarge"
}
#
# AMI mapping
#
variable "ami_os" {
  description = "Chef server OS (options: centos7, [centos6], ubuntu16, ubuntu14)"
  default     = "centos6"
}
variable "ami_map" {
  description = "AMI map of OS/region (2016-03-14)"
  default     = {
#    centos7-us-east-1       = "ami-6d1c2007"
#    centos7-us-west-2       = "ami-d2c924b2"
#    centos7-us-west-1       = "ami-af4333cf"
#    centos7-eu-central-1    = "ami-9bf712f4"
#    centos7-eu-west-1       = "ami-7abd0209"
#    centos7-ap-southeast-1  = "ami-f068a193"
#    centos7-ap-southeast-2  = "ami-fedafc9d"
#    centos7-ap-northeast-1  = "ami-eec1c380"
#    centos7-ap-northeast-2  = "ami-c74789a9"
#    centos7-sa-east-1       = "ami-26b93b4a"
    centos6-us-east-1       = "ami-1c221e76"
    centos6-us-west-2       = "ami-05cf2265"
    centos6-us-west-1       = "ami-ac5f2fcc"
    centos6-eu-central-1    = "ami-2bf11444"
    centos6-eu-west-1       = "ami-edb9069e"
    centos6-ap-southeast-1  = "ami-106aa373"
    centos6-ap-southeast-2  = "ami-87d2f4e4"
    centos6-ap-northeast-1  = "ami-fa3d3f94"
    centos6-ap-northeast-2  = "ami-56478938"
    centos6-sa-east-1       = "ami-03b93b6f"
    ubuntu16-us-east-1      = "-1"
    ubuntu16-us-west-2      = "-1"
    ubuntu16-us-west-1      = "-1"
    ubuntu16-eu-central-1   = "-1"
    ubuntu16-eu-west-1      = "-1"
    ubuntu16-ap-southeast-1 = "-1"
    ubuntu16-ap-southeast-2 = "-1"
    ubuntu16-ap-northeast-1 = "-1"
    ubuntu16-ap-northeast-2 = "-1"
    ubuntu16-sa-east-1      = "-1"
    ubuntu14-us-east-1      = "ami-415f6d2b"
    ubuntu14-us-west-2      = "ami-3d2cce5d"
    ubuntu14-us-west-1      = "ami-1d25557d"
    ubuntu14-eu-central-1   = "ami-9b9c86f7"
    ubuntu14-eu-west-1      = "ami-abc579d8"
    ubuntu14-ap-southeast-1 = "ami-f500c996"
    ubuntu14-ap-southeast-2 = "ami-1f30167c"
    ubuntu14-ap-northeast-1 = "ami-88686be6"
    ubuntu14-ap-northeast-2 = "-1"
    ubuntu14-sa-east-1      = "ami-f3e4669f"
    ubuntu12-us-east-1      = "-1"
    ubuntu12-us-west-2      = "-1"
    ubuntu12-us-west-1      = "-1"
    ubuntu12-eu-central-1   = "-1"
    ubuntu12-eu-west-1      = "-1"
    ubuntu12-ap-southeast-1 = "-1"
    ubuntu12-ap-southeast-2 = "-1"
    ubuntu12-ap-northeast-1 = "-1"
    ubuntu12-ap-northeast-2 = "-1"
    ubuntu12-sa-east-1      = "-1"
  }
}
variable "ami_usermap" {
  description = "Default username map for AMI selected"
  default = {
    centos7  = "centos"
    centos6  = "centos"
    ubuntu16 = "ubuntu"
    ubuntu14 = "ubuntu"
  }
}
#
# specific configs
#
variable "tag_description" {
  description = "Chef server AWS description tag text"
  default     = "Created using Terraform (tf_chef_server)"
}
variable "hostname" {
  description = "Chef server hostname"
  default     = "localhost"
}
variable "domain" {
  description = "Chef server domain name"
  default     = "localdomain"
}
variable "server_count" {
  description = "Number of Chef Servers to provision. DO NOT CHANGE!"
  default     = 1
}
variable "org_short" {
  description = "Chef server organization name (short form)"
  default     = "chef"
}
variable "org_long" {
  description = "Chef server organization name (long form)"
  default     = "Chef Organization"
}
variable "username" {
  description = "Chef server first user's username"
  default     = "admin"
}
variable "user_firstname" {
  description = "Chef server first user's first name"
  default     = "Admin"
}
variable "user_lastname" {
  description = "Chef server first user's last name"
  default     = "User"
}
variable "user_email" {
  description = "Chef server first user's e-mail address"
  default     = "admin@domain.tld"
}
variable "allowed_cidrs" {
  description = "List of CIDRs to allow SSH from (CSV list allowed)"
  default     = "0.0.0.0/0"
}
variable "r53_zone_id" {
  description = "Route53 Zone ID"
  default     = 0
}
variable "ssl_cert" {
  description = "SSL Certificate in PEM format"
}
variable "ssl_key" {
  description = "Key for SSL Certificate"
}
