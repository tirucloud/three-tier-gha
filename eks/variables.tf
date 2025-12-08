variable "ssh_key_name" {
  description = "The name of the SSH key pair to use for instances"
  type        = string
  default     = "thiru"
}
variable "aws_vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"

}
variable "aws_vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}