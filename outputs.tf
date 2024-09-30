output "documentdb_endpoint" {
  value       = aws_docdb_cluster.tofood_cluster.endpoint
  description = "Endpoint do cluster DocumentDB"
}

output "documentdb_cluster_id" {
  value       = aws_docdb_cluster.tofood_cluster.id
  description = "Identificador do cluster DocumentDB"
}
