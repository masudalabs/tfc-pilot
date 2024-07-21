variable "service_name" {
  type        = string
  description = "Nome do serviço a ser criado"
}

variable "location" {
  type        = string
  description = "Nome da localização do serviço"
}

variable "service_resource_group_name" {
  type        = string
  description = "Nome do resource group"
}

variable "service_extra_tags" {
  type        = map(string)
  default     = {}
  description = "Map com chave e valor para tags"
}

variable "docker_image_name" {
  type        = string
  description = "Nome de uma imagem no formato image:tag"
}

variable "environment" {
  type        = string
  description = "Ambiente prod/dev"
}