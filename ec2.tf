resource "aws_instance" "instancia" {
  ami                    = var.instanceami
  instance_type          = var.instancetype
  subnet_id              = aws_subnet.public_subnet.id
  user_data              = <<-EOF
                #!bin/bash
                sudo apt update
                sudo apt install apache2 -y
                echo "$(hostname -f)" > /var/www/html/index.html
                EOF
  key_name               = "deployer-key"
  vpc_security_group_ids = ["${aws_security_group.example.id}"]
  tags = {
    Name = var.nomeinstancia1

  }


}


resource "aws_instance" "instancia-privada" {
  ami                    = var.instanceami
  instance_type          = var.instancetype
  subnet_id              = aws_subnet.private_subnet.id
  user_data              = <<-EOF
                #!bin/bash
                sudo apt update
                sudo apt install apache2 -y
                echo "$(hostname -f)" > /var/www/html/index.html
                EOF
  key_name               = "deployer-key"
  vpc_security_group_ids = ["${aws_security_group.example.id}"]
  tags = {
    Name = var.nomeinstancia2

  }
}