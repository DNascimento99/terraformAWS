##Main 
/* variable "terraform_version" {
  type        = string
  description = "Versão Terraform"
  default     = "1.39.0"
} */
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
variable "bucket_name_1" {
  type        = string
  description = "Nome do bucket"
  default     = "bucket-danielnascimento-terrafromwithaws-1"
}
variable "bucket_name_2" {
  type        = string
  description = "Nome do bucket"
  default     = "bucket-danielnascimento-terrafromwithaws-2"
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
##Usuário IAM
variable "iam_name" {
  type        = string
  description = "Nome do usuário IAM"
  default     = "daniel-testes"
}
variable "iam_path" {
  type        = string
  description = "Caminho da pasta do usuário"
  default     = "/system/"
}
variable "iam_force_destroy" {
  type        = bool
  description = "Força destruíção de qualquer alteração feita"
  default     = "true"
}
variable "iam_tags" {
  type        = map(string)
  description = "Tags do usuário IAM"
  default = {
    Create    = "15-03-22"
    ManagedBy = "Terraform"
  }
}
##Policy
variable "policy_name" {
  type        = string
  description = "Criação policy de descrição de uma EC2"
  default     = "Policy_access_describe_EC2"
}