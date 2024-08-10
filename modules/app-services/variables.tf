variable "location" {
  type        = string
  description = "Nome da localização do serviço"
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

variable "docker_registry_url" {
  type = string
  description = "registry url"
}

variable "environment" {
  type        = string
  description = "Ambiente prod/dev"
}

variable "app_settings" {
  type    = map(string)
  default = {}
}
