resource "aws_security_group" "documentdb_sg" {
  name        = "tofood-documentdb-sg"
  description = "Security group for DocumentDB access"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 27017
    to_port     = 27017
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Ajuste para restringir o acesso conforme necessário
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "tofood-documentdb-sg"
  }
}

