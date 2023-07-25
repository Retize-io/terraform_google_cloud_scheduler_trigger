variable "uri" {
  type = string
}


variable "scheduler_name" {
  type = string
}

variable "schedule" {
  type    = string
  default = "*/30 * * * *"
}


variable "service_account_email" {
  type = string
}
