variable "tags" {
  description = "Default tags to apply to all resources."
  type        = map(any)
  default = {
    archuuid = "6b30478e-cdc7-48e8-a758-d9db72edcc06"
    env      = "Development"
  }
}

