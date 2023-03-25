resource "aws_key_pair" "vishalec2_key"{
  key_name = "ec2_jenkins_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQClWIgl4GjeM60BtdB1jnssxiCO33aTRptxz+8nB0oIbiTYBse1J2bU98drpcPPRsK0vm5RtQ8QtaS/b7stErcBDjRDz2bh/fLoegWnyiwJAcJaek2Z46lKtXGfz2jrPS3ukA79LmgtbRij0BfPuZO0O0fognb0GSfkbNLGm2Dk8o3t4+cU5cycyoZPIc7WIWvVFcpqzS9FJNvt4Po0+6dlvPWzdfZFSIngnVW4gIGIBSsxG4hgewxVzlJYsBmM8HpTuBwPvraGZqX7+QhbqMDOhXMUTbz/Px7VOR29MVM2y9xKqppChsvwXPkatz8BHutQBBoAe+U2WI/J0ps46okZt79iJJrtbw7zebWAsdHVJ3eXnPQVKuIeumzVoizXu2SjoFi+C3/fz6XZcPvf0GJbjNMCxan01JIheUfg6BlA+NrKXB+KnE9kcbCvjlZfJ4ZQrrciRhHJ0FmE6P/K7fjheGFMC7RPJ4QZiJYp47syuGvujvDtwv6X+K+FCFbRXUM= vishal9884gmail@ip-172-31-24-118"
}
resource "aws_security_group" "vishalec2_sg"{
  name = "vishfirst-sg"
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "vishalec2" {
  ami           = "ami-052efd3df9dad4825"
  key_name = "ec2_jenkins_key"
  vpc_security_group_ids = [aws_security_group.vishalec2_sg.id]
  instance_type = "t2.micro"
  tags = {
    Name = "EC2_jenkins_instance"
  }
}
