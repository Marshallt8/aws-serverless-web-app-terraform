variable "AWS_REGION" {
  default = "eu-west-2"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "tatekeypri"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "tatekey.pub"
}

variable "AMIS" {
  type = map(string)
  default = {
    eu-west-2 = "ami-0fab23d0250b9a47e"
	}
}

variable "INSTANCE_DEVICE_NAME" {
  default = "/dev/xvdh"
}