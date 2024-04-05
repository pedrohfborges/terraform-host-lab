# PROJETO CRIADO COM TERRAFORM

## Serviços da AWS Utilizados:
* 1x VPC
* 2x SubNet
   * 1x - Privada com 1 Instância EC2
   * 1x - Pública com 1 Instância EC2
* 1x Internet Gateway (Apontando para a subnet pública)
* 1x Tabela de Rota - Associando a SubnetPublica ao Internet Gateway
![image](https://github.com/pedrohfborges/terraform-host-lab/assets/111831621/b25a4ef8-f8ca-4425-8715-41048f9175ad)
