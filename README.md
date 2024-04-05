# PROJETO CRIADO COM TERRAFORM

## Serviços da AWS Utilizados:
* 1x VPC
* 2x SubNet
   * 1x - Privada com 1 Instância EC2
   * 1x - Pública com 1 Instância EC2
* 1x Internet Gateway (Apontando para a subnet pública)
* 1x Tabela de Rota - Associando a SubnetPublica ao Internet Gateway
  
![image](https://github.com/pedrohfborges/terraform-host-lab/assets/111831621/b25a4ef8-f8ca-4425-8715-41048f9175ad)

# Inicar projeto:

* Criar um bucket e alterar no arquivo "provider.tf" no campo bucket
* Definir a região do projeto e alterar no arquivo provider
* Definir todas as configurações de nome, network, no arquivo de configuração "varibles.tf"
* Após a personificação do código e instalar o terraform:

````
terraform init -upgrade
````
Após a utilização do comando abaixo o código solicitará a definição da chave pública. E de suma importância que esse passo seja feita de maneira correta visto que o acesso a instância será acessada apenas por chave SSH. Certifique que você tenha a chave privada (par da chave pública) para a realização do acesso.
````
terraform apply --auto-approve
````

Acesso SSH

````
ssh -i caminhodachavePRIVADA usuario@ipdamáquina
````
