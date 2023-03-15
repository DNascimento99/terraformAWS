##Main
variable "terraform_version" {
  type        = string
  description = "Versão Terraform"
  default     = "v1.39.9"
}
variable "region_name" {
  type        = string
  description = "Nome da região"
  default     = "us-east-1"
}
variable "profile_name" {
  type        = string
  description = "Nome do perfil"
  default     = "default"
}
##Bucket
variable "bucket_name" {
  type        = string
  description = "Nome do bucket"
  default     = "bucket-danielnascimento-terrafromwithaws"
}
variable "bucket_tags" {
  type        = map(string)
  description = "Tags para o bucket"
  default = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    UpdateDate  = "10-03-2023"
  }
}
variable "bucket_type_acl" {
  type        = string
  description = "Tipo da ACL do bucket"
  default     = "private"
}
##Instância
variable "instance_ami" {
  type        = string
  description = "Imagem utilizada para criação da instância"
  default     = "ami-0557a15b87f6559cf"
}
variable "instance_type" {
  type        = string
  description = "Tipo da instância"
  default     = "t2.micro"
}

variable "instance_tags" {
  type        = map(string)
  description = "Tags para instância"
  default = {
    Name      = "linuxInstance"
    Create    = "10-03-2023"
    ManagedBy = "Terraform"
  }
}
