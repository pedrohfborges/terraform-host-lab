####NET CONFIGURATION

variable "vpc" {
  default     = "192.168.0.0/16"
  description = "Set VCN IP"
}

variable "netpublic" {
  default     = "192.168.30.0/24"
  description = "Set Subnet Public"
}

variable "netprivate" {
  default     = "192.168.40.0/24"
  description = "Set subnet Private"
}

##INSTANCE CONFIGURATION

variable "instanceami" {
  default     = "ami-05fb0b8c1424f266b"
  description = "ID da ami"
}

variable "instancetype" {
  default     = "t2.micro"
  description = "Tipo da instancia"
}

variable "ingress" {
  type    = list(any)
  default = [22, 80, 443]

}

variable "keyssh" {
  type        = string
  description = "Insirir uma chave publica para instanca"
}

variable "nomeinstancia1" {
  type        = string
  default     = "Instancia1"
  description = "Defina um nome para a primera instância"
}

variable "nomeinstancia2" {
  type        = string
  default     = "Instancia2"
  description = "Defina um nome para a segunda instância"
}














