variable "image_id" {
  type = string
  description = "Used AMI ID"
  validation {
    condition = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "The image_id value must be a valid AMI ID, starting with \"ami-\"."
  }
  sensitive = false
}