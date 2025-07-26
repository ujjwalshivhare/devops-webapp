variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  default = "ami-0cda377a1b884a1bc" # ✅ Amazon Linux 2 for ap-south-1
}

variable "instance_type" {
  default = "t2.medium"
}

variable "key_name" {
  default = "project"  # ✅ AWS console me jo key-pair ka naam hai
}
