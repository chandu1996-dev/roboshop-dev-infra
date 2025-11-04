variable "project_name" {
    type = string
    default = "roboshop"
  
}

variable "environment" {
    type = string
    default = "dev"
  
}

variable "sg_names" {
    default = [
        # databases
        "mongodb", "redis", "mysql", "rabbitmq",
        # backend
        "catalogue", "user", "cart", "shipping", "payment",
        # frontend
        "frontend",
        # bastion
        "bastion",
        #frontend load balancer
        "frontend_alb",
        #Backend ALB
        "backend_alb"
    ]
}

variable "zone_id" {
    default = "Z00716421P5ZXLU5W7GIT"
}

variable "domain_name" {
    default = "born96.fun"
}