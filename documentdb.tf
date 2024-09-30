resource "aws_docdb_cluster" "tofood_cluster" {
  cluster_identifier      = var.cluster_identifier
  master_username         = var.db_username
  master_password         = var.db_password
  engine_version          = "4.0.0" # Version compatible with MongoDB 3.6
  db_subnet_group_name    = aws_docdb_subnet_group.tofood_db_subnet_group.name
  vpc_security_group_ids  = [aws_security_group.documentdb_sg.id]
  storage_encrypted       = true

  tags = {
    Name = "tofood-documentdb-cluster"
  }
}

resource "aws_docdb_cluster_instance" "tofood_instance" {
  count                = 2
  identifier           = "${var.cluster_identifier}-instance-${count.index}"
  cluster_identifier   = aws_docdb_cluster.tofood_cluster.id
  instance_class       = "db.r5.large"
  engine               = aws_docdb_cluster.tofood_cluster.engine

  tags = {
    Name = "tofood-documentdb-instance-${count.index}"
  }
}

resource "aws_docdb_subnet_group" "tofood_db_subnet_group" {
  name       = "tofood-documentdb-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "tofood-documentdb-subnet-group"
  }
}
